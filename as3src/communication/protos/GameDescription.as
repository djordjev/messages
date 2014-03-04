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
	public dynamic final class GameDescription extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const GAMEID:FieldDescriptor$TYPE_INT64 = new FieldDescriptor$TYPE_INT64("communication.protos.GameDescription.gameId", "gameId", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var gameId$field:Int64;

		public function clearGameId():void {
			gameId$field = null;
		}

		public function get hasGameId():Boolean {
			return gameId$field != null;
		}

		public function set gameId(value:Int64):void {
			gameId$field = value;
		}

		public function get gameId():Int64 {
			return gameId$field;
		}

		/**
		 *  @private
		 */
		public static const GAMENAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("communication.protos.GameDescription.gameName", "gameName", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		public var gameName:String;

		/**
		 *  @private
		 */
		public static const NUMBEROFPLAYERS:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("communication.protos.GameDescription.numberOfPlayers", "numberOfPlayers", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		public var numberOfPlayers:int;

		/**
		 *  @private
		 */
		public static const NUMBEROFJOINEDPLAYERS:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("communication.protos.GameDescription.numberOfJoinedPlayers", "numberOfJoinedPlayers", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		public var numberOfJoinedPlayers:int;

		/**
		 *  @private
		 */
		public static const OBJECTIVE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("communication.protos.GameDescription.objective", "objective", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		public var objective:int;

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasGameId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_INT64(output, gameId$field);
			}
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, this.gameName);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.numberOfPlayers);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.numberOfJoinedPlayers);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.objective);
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override com.netease.protobuf.used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var gameId$count:uint = 0;
			var gameName$count:uint = 0;
			var numberOfPlayers$count:uint = 0;
			var numberOfJoinedPlayers$count:uint = 0;
			var objective$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (gameId$count != 0) {
						throw new flash.errors.IOError('Bad data format: GameDescription.gameId cannot be set twice.');
					}
					++gameId$count;
					this.gameId = com.netease.protobuf.ReadUtils.read$TYPE_INT64(input);
					break;
				case 2:
					if (gameName$count != 0) {
						throw new flash.errors.IOError('Bad data format: GameDescription.gameName cannot be set twice.');
					}
					++gameName$count;
					this.gameName = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 3:
					if (numberOfPlayers$count != 0) {
						throw new flash.errors.IOError('Bad data format: GameDescription.numberOfPlayers cannot be set twice.');
					}
					++numberOfPlayers$count;
					this.numberOfPlayers = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 4:
					if (numberOfJoinedPlayers$count != 0) {
						throw new flash.errors.IOError('Bad data format: GameDescription.numberOfJoinedPlayers cannot be set twice.');
					}
					++numberOfJoinedPlayers$count;
					this.numberOfJoinedPlayers = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 5:
					if (objective$count != 0) {
						throw new flash.errors.IOError('Bad data format: GameDescription.objective cannot be set twice.');
					}
					++objective$count;
					this.objective = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
