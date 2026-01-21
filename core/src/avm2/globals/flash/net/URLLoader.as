package flash.net {
    import __ruffle__.stub_method;

    import flash.events.EventDispatcher;
    import flash.net.URLRequest;

    public class URLLoader extends EventDispatcher {
        [Ruffle(NativeAccessible)]
        public var data:*;

        [Ruffle(NativeAccessible)]
        public var dataFormat:String = "text";

        [Ruffle(NativeAccessible)]
        public var bytesLoaded:uint;

        [Ruffle(NativeAccessible)]
        public var bytesTotal:uint;

        // Internal ID to track the current load operation.
        // Incremented on load() and close() to invalidate stale async tasks.
        [Ruffle(NativeAccessible)]
        internal var _loadId:int = 0;

        public function URLLoader(request:URLRequest = null) {
            if (request != null) {
                this.load(request);
            }
        }

        public function load(request:URLRequest):void {
            _loadId++;
            native_load(request);
        }

        private native function native_load(request:URLRequest):void;

        public function close():void {
            // stub_method("flash.net.URLLoader", "close");
            _loadId++;
        }
    }
}
