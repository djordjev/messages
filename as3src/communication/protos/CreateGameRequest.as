package communication.protos {
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
	public dynamic final class CreateGameRequest extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const GAMENAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("communication.protos.CreateGameRequest.gameName", "gameName", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		public var gameName:String;

		/**
		 *  @private
		 */
		public static const NUMBEROFPLAYERS:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("communication.protos.CreateGameRequest.numberOfPlayers", "numberOfPlayers", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		public var numberOfPlayers:int;

		/**
		 *  @private
		 */
		public static const OBJECTIVECODE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("communication.protos.CreateGameRequest.objectiveCode", "objectiveCode", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		public var objectiveCode:int;

		/**
		 *  @private
		 */
		public static const USERIDS:RepeatedFieldDescriptor$TYPE_INT64 = new RepeatedFieldDescriptor$TYPE_INT64("communication.protos.CreateGameRequest.userIds", "userIds", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		[ArrayElementType("Int64")]
		public var userIds:Array = [];

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, this.gameName);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.numberOfPlayers);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.objectiveCode);
			for (var userIds$index:uint = 0; userIds$index < this.userIds.length; ++userIds$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_INT64(output, this.userIds[userIds$index]);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var gameName$count:uint = 0;
			var numberOfPlayers$count:uint = 0;
			var objectiveCode$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (gameName$count != 0) {
						throw new flash.errors.IOError('Bad data format: CreateGameRequest.gameName cannot be set twice.');
					}
					++gameName$count;
					this.gameName = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 2:
					if (numberOfPlayers$count != 0) {
						throw new flash.errors.IOError('Bad data format: CreateGameRequest.numberOfPlayers cannot be set twice.');
					}
					++numberOfPlayers$count;
					this.numberOfPlayers = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 3:
					if (objectiveCode$count != 0) {
						throw new flash.errors.IOError('Bad data format: CreateGameRequest.objectiveCode cannot be set twice.');
					}
					++objectiveCode$count;
					this.objectiveCode = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 4:
					if ((tag & 7) == com.netease.protobuf.WireType.LENGTH_DELIMITED) {
						com.netease.protobuf.ReadUtils.readPackedRepeated(input, com.netease.protobuf.ReadUtils.read$TYPE_INT64, this.userIds);
						break;
					}
					this.userIds.push(com.netease.protobuf.ReadUtils.read$TYPE_INT64(input));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
