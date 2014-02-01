package com.communication {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import com.communication.Alliance;
	import com.communication.Territory;
	import com.communication.Command;
	import com.communication.GameDescription;
	import com.communication.LightGameContext;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public dynamic final class GameContext extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const GAMEDESCRIPTION:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("com.communication.GameContext.gameDescription", "gameDescription", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, function():Class { return com.communication.GameDescription; });

		public var gameDescription:com.communication.GameDescription;

		/**
		 *  @private
		 */
		public static const LIGHTGAMECONTEXT:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("com.communication.GameContext.lightGameContext", "lightGameContext", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, function():Class { return com.communication.LightGameContext; });

		public var lightGameContext:com.communication.LightGameContext;

		/**
		 *  @private
		 */
		public static const TORRITORIES:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("com.communication.GameContext.torritories", "torritories", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, function():Class { return com.communication.Territory; });

		[ArrayElementType("com.communication.Territory")]
		public var torritories:Array = [];

		/**
		 *  @private
		 */
		public static const ALLIANCES:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("com.communication.GameContext.alliances", "alliances", (4 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, function():Class { return com.communication.Alliance; });

		[ArrayElementType("com.communication.Alliance")]
		public var alliances:Array = [];

		/**
		 *  @private
		 */
		public static const PENDINGCOMANDS:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("com.communication.GameContext.pendingComands", "pendingComands", (5 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, function():Class { return com.communication.Command; });

		[ArrayElementType("com.communication.Command")]
		public var pendingComands:Array = [];

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.gameDescription);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.lightGameContext);
			for (var torritories$index:uint = 0; torritories$index < this.torritories.length; ++torritories$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.torritories[torritories$index]);
			}
			for (var alliances$index:uint = 0; alliances$index < this.alliances.length; ++alliances$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.alliances[alliances$index]);
			}
			for (var pendingComands$index:uint = 0; pendingComands$index < this.pendingComands.length; ++pendingComands$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.pendingComands[pendingComands$index]);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var gameDescription$count:uint = 0;
			var lightGameContext$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (gameDescription$count != 0) {
						throw new flash.errors.IOError('Bad data format: GameContext.gameDescription cannot be set twice.');
					}
					++gameDescription$count;
					this.gameDescription = new com.communication.GameDescription();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.gameDescription);
					break;
				case 2:
					if (lightGameContext$count != 0) {
						throw new flash.errors.IOError('Bad data format: GameContext.lightGameContext cannot be set twice.');
					}
					++lightGameContext$count;
					this.lightGameContext = new com.communication.LightGameContext();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.lightGameContext);
					break;
				case 3:
					this.torritories.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new com.communication.Territory()));
					break;
				case 4:
					this.alliances.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new com.communication.Alliance()));
					break;
				case 5:
					this.pendingComands.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new com.communication.Command()));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
