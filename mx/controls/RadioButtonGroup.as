class mx.controls.RadioButtonGroup
{
   static var symbolName = "RadioButtonGroup";
   static var symbolOwner = mx.controls.RadioButtonGroup;
   static var version = "2.0.2.126";
   var className = "RadioButtonGroup";
   var indexNumber = 0;
   function RadioButtonGroup()
   {
      this.init();
      mx.events.UIEventDispatcher.initialize(this);
   }
   function init(Void)
   {
      this.radioList = new Array();
   }
   function setGroupName(groupName)
   {
      if(groupName == undefined || groupName == "")
      {
         return undefined;
      }
      var _loc6_ = this.__groupName;
      _parent[groupName] = this;
      for(var _loc5_ in this.radioList)
      {
         this.radioList[_loc5_].groupName = groupName;
         var _loc3_ = this.radioList[_loc5_];
      }
      _loc3_.deleteGroupObj(_loc6_);
   }
   function getGroupName()
   {
      return this.__groupName;
   }
   function addInstance(instance)
   {
      instance.indexNumber = this.indexNumber++;
      this.radioList.push(instance);
   }
   function getValue()
   {
      if(this.selectedRadio.data == "")
      {
         return this.selectedRadio.label;
      }
      return this.selectedRadio.__data;
   }
   function getLabelPlacement()
   {
      for(var _loc3_ in this.radioList)
      {
         var _loc2_ = this.radioList[_loc3_].getLabelPlacement();
      }
      return _loc2_;
   }
   function setLabelPlacement(pos)
   {
      for(var _loc3_ in this.radioList)
      {
         this.radioList[_loc3_].setLabelPlacement(pos);
      }
   }
   function setEnabled(val)
   {
      for(var _loc3_ in this.radioList)
      {
         this.radioList[_loc3_].enabled = val;
      }
   }
   function setSize(val, val1)
   {
      for(var _loc3_ in this.radioList)
      {
         this.radioList[_loc3_].setSize(val,val1);
      }
   }
   function getEnabled()
   {
      for(var _loc4_ in this.radioList)
      {
         var _loc2_ = this.radioList[_loc4_].enabled;
         var _loc3_ = t + (_loc2_ + 0);
      }
      if(_loc3_ == this.radioList.length)
      {
         return true;
      }
      if(_loc3_ == 0)
      {
         return false;
      }
   }
   function setStyle(name, val)
   {
      for(var _loc4_ in this.radioList)
      {
         this.radioList[_loc4_].setStyle(name,val);
      }
   }
   function setInstance(val)
   {
      for(var _loc3_ in this.radioList)
      {
         if(this.radioList[_loc3_] == val)
         {
            this.radioList[_loc3_].selected = true;
         }
      }
   }
   function getInstance()
   {
      return this.selectedRadio;
   }
   function setValue(val)
   {
      for(var _loc4_ in this.radioList)
      {
         if(this.radioList[_loc4_].__data == val || this.radioList[_loc4_].label == val)
         {
            var _loc2_ = _loc4_;
            break;
         }
      }
      if(_loc2_ != undefined)
      {
         this.selectedRadio.setState(false);
         this.selectedRadio.hitArea_mc._height = this.selectedRadio.__height;
         this.selectedRadio.hitArea_mc._width = this.selectedRadio.__width;
         this.selectedRadio = this.radioList[_loc2_];
         this.selectedRadio.setState(true);
         this.selectedRadio.hitArea_mc._width = _loc0_ = 0;
         this.selectedRadio.hitArea_mc._height = _loc0_;
      }
   }
   function __set__groupName(groupName)
   {
      if(groupName == undefined || groupName == "")
      {
         return undefined;
      }
      var _loc6_ = this.__groupName;
      _parent[groupName] = this;
      for(var _loc5_ in this.radioList)
      {
         this.radioList[_loc5_].groupName = groupName;
         var _loc3_ = this.radioList[_loc5_];
      }
      _loc3_.deleteGroupObj(_loc6_);
      return this.__get__groupName();
   }
   function __get__groupName()
   {
      return this.__groupName;
   }
   function __set__selectedData(val)
   {
      for(var _loc4_ in this.radioList)
      {
         if(this.radioList[_loc4_].__data == val || this.radioList[_loc4_].label == val)
         {
            var _loc2_ = _loc4_;
            break;
         }
      }
      if(_loc2_ != undefined)
      {
         this.selectedRadio.setState(false);
         this.selectedRadio = this.radioList[_loc2_];
         this.selectedRadio.setState(true);
      }
      return this.__get__selectedData();
   }
   function __get__selectedData()
   {
      if(this.selectedRadio.data == "" || this.selectedRadio.data == undefined)
      {
         return this.selectedRadio.label;
      }
      return this.selectedRadio.__data;
   }
   function __get__selection()
   {
      return this.selectedRadio;
   }
   function __set__selection(val)
   {
      for(var _loc3_ in this.radioList)
      {
         if(this.radioList[_loc3_] == val)
         {
            this.radioList[_loc3_].selected = true;
         }
      }
      return this.__get__selection();
   }
   function __set__labelPlacement(pos)
   {
      for(var _loc3_ in this.radioList)
      {
         this.radioList[_loc3_].setLabelPlacement(pos);
      }
      return this.__get__labelPlacement();
   }
   function __get__labelPlacement()
   {
      for(var _loc3_ in this.radioList)
      {
         var _loc2_ = this.radioList[_loc3_].getLabelPlacement();
      }
      return _loc2_;
   }
   function __set__enabled(val)
   {
      for(var _loc3_ in this.radioList)
      {
         this.radioList[_loc3_].enabled = val;
      }
      return this.__get__enabled();
   }
   function __get__enabled()
   {
      var _loc2_ = 0;
      for(var _loc3_ in this.radioList)
      {
         _loc2_ = _loc2_ + this.radioList[_loc3_].enabled;
      }
      if(_loc2_ == 0)
      {
         return false;
      }
      if(_loc2_ == this.radioList.length)
      {
         return true;
      }
   }
}
