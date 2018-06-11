class mx.controls.RadioButton extends mx.controls.Button
{
   static var symbolName = "RadioButton";
   static var symbolOwner = mx.controls.RadioButton;
   static var version = "2.0.2.126";
   var className = "RadioButton";
   var btnOffset = 0;
   var __toggle = true;
   var __label = "Radio Button";
   var __labelPlacement = "right";
   var ignoreClassStyleDeclaration = {Button:1};
   var __groupName = "radioGroup";
   var indexNumber = 0;
   var offset = false;
   var falseUpSkin = "";
   var falseDownSkin = "";
   var falseOverSkin = "";
   var falseDisabledSkin = "";
   var trueUpSkin = "";
   var trueDownSkin = "";
   var trueOverSkin = "";
   var trueDisabledSkin = "";
   var falseUpIcon = "RadioFalseUp";
   var falseDownIcon = "RadioFalseDown";
   var falseOverIcon = "RadioFalseOver";
   var falseDisabledIcon = "RadioFalseDisabled";
   var trueUpIcon = "RadioTrueUp";
   var trueDownIcon = "";
   var trueOverIcon = "";
   var trueDisabledIcon = "RadioTrueDisabled";
   var centerContent = false;
   var borderW = 0;
   var clipParameters = {labelPlacement:1,data:1,label:1,groupName:1,selected:1};
   static var mergedClipParameters = mx.core.UIObject.mergeClipParameters(mx.controls.RadioButton.prototype.clipParameters,mx.controls.Button.prototype.clipParameters);
   function RadioButton()
   {
      super();
   }
   function init(Void)
   {
      this.setToggle(this.__toggle);
      this.__value = this;
      super.init();
   }
   function size(Void)
   {
      super.size();
   }
   function onRelease()
   {
      if(this.selected)
      {
         return undefined;
      }
      this.releaseFocus();
      this.phase = "up";
      this.setSelected(true);
      this.dispatchEvent({type:"click"});
      this._parent[this.__groupName].dispatchEvent({type:"click"});
   }
   function setData(val)
   {
      this.__data = val;
   }
   function __set__data(val)
   {
      this.__data = val;
      return this.__get__data();
   }
   function getData(val)
   {
      return this.__data;
   }
   function __get__data()
   {
      return this.__data;
   }
   function onUnload()
   {
      if(this._parent[this.__groupName].selectedRadio == this)
      {
         this._parent[this.__groupName].selectedRadio = undefined;
      }
      this._parent[this.__groupName].radioList[this.indexNumber] = null;
      delete this._parent[this.__groupName].radioList.this.indexNumber;
   }
   function setSelected(val)
   {
      var _loc2_ = this._parent[this.__groupName];
      var _loc4_ = _loc2_.selectedRadio.__width;
      var _loc5_ = _loc2_.selectedRadio.__height;
      if(val)
      {
         _loc2_.selectedRadio.setState(false);
         _loc2_.selectedRadio = this;
      }
      else if(_loc2_.selectedRadio == this)
      {
         _loc2_.selectedRadio.setState(false);
         _loc2_.selectedRadio = undefined;
      }
      this.setState(val);
   }
   function deleteGroupObj(groupName)
   {
      delete this._parent.groupName;
   }
   function getGroupName()
   {
      return this.__groupName;
   }
   function __get__groupName()
   {
      return this.__groupName;
   }
   function setGroupName(groupName)
   {
      if(groupName == undefined || groupName == "")
      {
         return undefined;
      }
      delete this._parent[this.__groupName].radioList.this.__data;
      this.addToGroup(groupName);
      this.__groupName = groupName;
   }
   function __set__groupName(groupName)
   {
      this.setGroupName(groupName);
      return this.__get__groupName();
   }
   function addToGroup(groupName)
   {
      if(groupName == "" || groupName == undefined)
      {
         return undefined;
      }
      var _loc2_ = this._parent[groupName];
      if(_loc2_ == undefined)
      {
         _loc2_ = this._parent[groupName] = new mx.controls.RadioButtonGroup();
         this._parent[groupName] = new mx.controls.RadioButtonGroup().__groupName = groupName;
      }
      (this._parent[groupName] = new mx.controls.RadioButtonGroup()).addInstance(this);
      if(this.__state)
      {
         this._parent[groupName] = new mx.controls.RadioButtonGroup().selectedRadio.setState(false);
         this._parent[groupName] = new mx.controls.RadioButtonGroup().selectedRadio = this;
      }
   }
   function __get__emphasized()
   {
      return undefined;
   }
   function keyDown(e)
   {
      switch(e.code)
      {
         case 40:
            this.setNext();
            break;
         case 38:
            this.setPrev();
            break;
         case 37:
            this.setPrev();
            break;
         case 39:
            this.setNext();
      }
   }
   function setNext()
   {
      var _loc2_ = this._parent[this.__get__groupName()];
      if(_loc2_.selectedRadio.indexNumber + 1 == _loc2_.radioList.length)
      {
         return undefined;
      }
      var _loc4_ = !_loc2_.selectedRadio?-1:_loc2_.selectedRadio.indexNumber;
      var _loc3_ = 1;
      while(_loc3_ < _loc2_.radioList.length)
      {
         if(_loc2_.radioList[_loc4_ + _loc3_] != undefined && _loc2_.radioList[_loc4_ + _loc3_].enabled)
         {
            var _loc5_ = this.getFocusManager();
            _loc2_.radioList[_loc4_ + _loc3_].selected = true;
            _loc5_.setFocus(_loc2_.radioList[_loc2_.selectedRadio.indexNumber]);
            _loc2_.dispatchEvent({type:"click"});
            break;
         }
         _loc3_ = _loc3_ + 1;
      }
   }
   function setPrev()
   {
      var _loc2_ = this._parent[this.__get__groupName()];
      if(_loc2_.selectedRadio.indexNumber == 0)
      {
         return undefined;
      }
      var _loc4_ = !_loc2_.selectedRadio?1:_loc2_.selectedRadio.indexNumber;
      var _loc3_ = 1;
      while(_loc3_ < _loc2_.radioList.length)
      {
         if(_loc2_.radioList[_loc4_ - _loc3_] != undefined && _loc2_.radioList[_loc4_ - _loc3_].enabled)
         {
            var _loc5_ = this.getFocusManager();
            _loc2_.radioList[_loc4_ - _loc3_].selected = true;
            _loc5_.setFocus(_loc2_.radioList[_loc2_.selectedRadio.indexNumber]);
            _loc2_.dispatchEvent({type:"click"});
            break;
         }
         _loc3_ = _loc3_ + 1;
      }
   }
   function __set__toggle(v)
   {
      return this.__get__toggle();
   }
   function __get__toggle()
   {
   }
   function __set__icon(v)
   {
      return this.__get__icon();
   }
   function __get__icon()
   {
   }
}
