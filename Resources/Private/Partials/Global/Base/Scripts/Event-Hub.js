(() => {
    window.nueww = Object.assign({}, window.nueww, {
        eventHub: (() => {
            const windowOnlyEvents = [
                'resize',
            ];
            const undelegatable = [];
            const throttleEvents = [
                'scroll',
                'resize',
            ];
            const windowEvents = {};
            const uudelegatableEvents = {};
            const delegatedEvents = {};
            let throttleQueue = {};

            window.setInterval(() => {
                Object.keys(throttleQueue).forEach((key) => {
                    throttleQueue[key]();
                });

                throttleQueue = {};
            }, 100);

            function registerThrottledEvent(elem, eventType, callback) {
                elem.addEventListener(eventType, (e) => {
                    if (!throttleQueue[callback]) {
                        throttleQueue[callback] = () => {
                            callback(e);
                        };
                    }
                });
            }

            function registerWindowOnlyEvent(eventType, callback) {
                if (!windowEvents[eventType]) {
                    windowEvents[eventType] = [];
                }

                if (windowEvents[eventType]
                    .findIndex(e => e.callback === callback) === -1) {
                    windowEvents[eventType].push({
                        callback,
                    });

                    document.addEventListener('DOMContentLoaded', () => {
                        if (throttleEvents.indexOf(eventType) === -1) {
                            window.addEventListener(eventType, callback);
                        } else {
                            registerThrottledEvent(window, eventType, callback);
                        }
                    });
                }
            }

            function registerUndelegatableEvent(eventType, selector, callback) {
                if (!uudelegatableEvents[eventType]) {
                    uudelegatableEvents[eventType] = [];
                }

                if (uudelegatableEvents[eventType]
                    .findIndex(e => e.selector === selector && e.callback === callback) === -1) {
                    uudelegatableEvents[eventType].push({
                        selector,
                        callback,
                    });
                    document.addEventListener('DOMContentLoaded', () => {
                        [].slice.call(document.querySelectorAll(selector)).forEach((elem) => {
                            if (throttleEvents.indexOf(eventType) === -1) {
                                elem.addEventListener(eventType, callback);
                            } else {
                                registerThrottledEvent(elem, eventType, callback);
                            }
                        });
                    });
                }
            }

            function registerDelegatableEvent(eventType, selector, callback) {
                if (!delegatedEvents[eventType]) {
                    delegatedEvents[eventType] = [];
                    document.addEventListener(eventType, (e) => {
                        const actionableParent = e.target !== document ? e.target.closest('a, button') : null;

                        delegatedEvents[eventType].forEach((entry) => {
                            if (
                                entry.selector === document ||
                                entry.selector instanceof Document ||
                                entry.selector instanceof HTMLElement
                            ) {
                                entry.callback(e);
                                return;
                            }

                            if (!e.target.matches) {
                                return;
                            }

                            if (e.target.matches(entry.selector)) {
                                entry.callback(e);
                                return;
                            }

                            if (actionableParent && actionableParent.matches(entry.selector)) {
                                entry.callback(e);
                            }
                        });
                    }, true);
                }

                delegatedEvents[eventType].push({
                    selector,
                    callback,
                });
            }

            function register(eventTypes, selector, callback) {
                eventTypes.split(' ').forEach((eventType) => {
                    if (windowOnlyEvents.indexOf(eventType) > -1) {
                        registerWindowOnlyEvent(eventType, callback);
                    } else if (undelegatable.indexOf(eventType) > -1) {
                        registerUndelegatableEvent(eventType, selector, callback);
                    } else {
                        registerDelegatableEvent(eventType, selector, callback);
                    }
                });
            }

            return {
                register,
            };
        })(),
    });
})();
