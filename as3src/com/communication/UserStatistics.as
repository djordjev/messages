package com.communication {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public dynamic final class UserStatistics extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const NUMBEROFGAMES:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("com.communication.UserStatistics.numberOfGames", "numberOfGames", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var numberOfGames:int;

		/**
		 *  @private
		 */
		public static const NUMBEROFWINS:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("com.communication.UserStatistics.numberOfWins", "numberOfWins", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		public var numberOfWins:int;

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.numberOfGames);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.numberOfWins);
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var numberOfGames$count:uint = 0;
			var numberOfWins$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (numberOfGames$count != 0) {
						throw new flash.errors.IOError('Bad data format: UserStatistics.numberOfGames cannot be set twice.');
					}
					++numberOfGames$count;
					this.numberOfGames = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 2:
					if (numberOfWins$count != 0) {
						throw new flash.errors.IOError('Bad data format: UserStatistics.numberOfWins cannot be set twice.');
					}
					++numberOfWins$count;
					this.numberOfWins = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
