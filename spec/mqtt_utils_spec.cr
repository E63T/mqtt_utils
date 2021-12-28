require "./spec_helper"

describe MQTTUtils do
  it "works" do 
    info = MQTTUtils::RouteInfo.parse "d2p/foo_bar_get/g/gateway/d/device/r/reference"
    
    info.direction.should eq("d2p")
    info.message_type.should eq("foo_bar")
    info.method.should eq("get")
    info.gateway_key.should eq("gateway")
    info.device_key.should eq("device")
    info.reference.should eq("reference")
  end

  it "works without method splitting" do 
    info = MQTTUtils::RouteInfo.parse "d2p/foo_bar_get/g/gateway/d/device/r/reference", no_split: true
    
    info.direction.should eq("d2p")
    info.message_type.should eq("foo_bar_get")
    info.method.should eq("")
    info.gateway_key.should eq("gateway")
    info.device_key.should eq("device")
    info.reference.should eq("reference")
  end
end
