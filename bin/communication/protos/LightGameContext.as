package communication.protos {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import communication.protos.Player;
	import communication.protos.GameDescription;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public dynamic final class LightGameContext extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const GAMEDESCRIPTION:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("communication.protos.LightGameContext.gameDescription", "gameDescription", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, function():Class { return communication.protos.GameDescription; });

		public var gameDescription:communication.protos.GameDescription;

		/**
		 *  @private
		 */
		public static const ROUND:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("communication.protos.LightGameContext.round", "round", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		public var round:int;

		/**
		 *  @private
		 */
		public static const PHASE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("communication.protos.LightGameContext.phase", "phase", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		public var phase:int;

		/**
		 *  @private
		 */
		public static const PLAYERSINGAME:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("communication.protos.LightGameContext.playersInGame", "playersInGame", (4 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, function():Class { return communication.protos.Player; });

		[ArrayElementType("communication.protos.Player")]
		public var playersInGame:Array = [];

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.gameDescription);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.round);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.phase);
			for (var playersInGame$index:uint = 0; playersInGame$index < this.playersInGame.length; ++playersInGame$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.playersInGame[playersInGame$index]);
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
			var round$count:uint = 0;
			var phase$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (gameDescription$count != 0) {
						throw new flash.errors.IOError('Bad data format: LightGameContext.gameDescription cannot be set twice.');
					}
					++gameDescription$count;
					this.gameDescription = new communication.protos.GameDescription();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.gameDescription);
					break;
				case 2:
					if (round$count != 0) {
						throw new flash.errors.IOError('Bad data format: LightGameContext.round cannot be set twice.');
					}
					++round$count;
					this.round = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 3:
					if (phase$count != 0) {
						throw new flash.errors.IOError('Bad data format: LightGameContext.phase cannot be set twice.');
					}
					++phase$count;
					this.phase = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 4:
					this.playersInGame.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new communication.protos.Player()));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
