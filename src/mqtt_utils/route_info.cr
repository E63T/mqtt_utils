module MQTTUtils
    class RouteInfo
        property direction : String
        property message_type : String
        property method : String
        property gateway_key : String
        property device_key : String
        property reference : String

        def initialize(@direction, @message_type, @method, @gateway_key = "", @device_key = "", @reference = "")
        end

        def self.parse(topic : String, no_split : Bool = false)
            parts = topic.split('/')

            raise "Invalid direction #{parts.first}" if parts.first != "d2p" && parts.first != "p2d"

            
            mtype, _, method = parts[1].rpartition('_')

            gkey = if idx = parts.index("g")
                parts[idx + 1]
            else
                ""
            end

            dkey = if idx = parts.index("d")
                parts[idx + 1]
            else
                ""
            end

            rkey = if idx = parts.index("r")
                parts[idx + 1]
            else
                ""
            end

            new(
                parts[0],
                (no_split ? parts[1] : mtype),
                (no_split ? "" : method),
                gkey,
                dkey,
                rkey
            )
        end
    end
end