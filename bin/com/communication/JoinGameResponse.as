package com.communication {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import com.communication.GameContext;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public dynamic final class JoinGameResponse extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const GAMECONTEXT:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("com.communication.JoinGameResponse.gameContext", "gameContext", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, function():Class { return com.communication.GameContext; });

		public var gameContext:com.communication.GameContext;

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.gameContext);
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var gameContext$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (gameContext$count != 0) {
						throw new flash.errors.IOError('Bad data format: JoinGameResponse.gameContext cannot be set twice.');
					}
					++gameContext$count;
					this.gameContext = new com.communication.GameContext();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.gameContext);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
