using System;
using Phoenix.HabboHotel.GameClients;
using Phoenix.HabboHotel.Rooms;
namespace Phoenix.HabboHotel.RoomBots
{
	internal class GuideBotMovement : BotAI
	{
		private int SpeechTimer;
		private int ActionTimer;

		public GuideBotMovement(int VirtualId)
		{
			this.SpeechTimer = new Random((VirtualId ^ 2) + DateTime.Now.Millisecond).Next(10, 250);
			this.ActionTimer = new Random((VirtualId ^ 2) + DateTime.Now.Millisecond).Next(10, 30);
		}

        public override void OnSelfEnterRoom() { }
        public override void OnSelfLeaveRoom(bool Kicked) { }
        public override void OnUserEnterRoom(RoomUser User) { }
        public override void OnUserLeaveRoom(GameClient Session) { }
        public override void OnUserSay(RoomUser User, string Message) { }
        public override void OnUserShout(RoomUser User, string Message) { }

        public override void OnTimerTick()
        {
            if (this.SpeechTimer <= 0)
            {
                if (base.GetBotData().RandomSpeech.Count > 0)
                {
                    RandomSpeech Speech = base.GetBotData().GetRandomSpeech();
                    base.GetRoomUser().Chat(null, Speech.Message, Speech.Shout);
                }
                this.SpeechTimer = PhoenixEnvironment.GetRandomNumber(10, 300);
            }
            else
            {
                this.SpeechTimer--;
            }
            if (this.ActionTimer <= 0)
            {
                int randomX = 0;
                int randomY = 0;

                switch (GetBotData().WalkingMode.ToLower())
                {
                    case "freeroam":
                        randomX = PhoenixEnvironment.GetRandomNumber(0, GetRoom().Model.MapSizeX);
                        randomY = PhoenixEnvironment.GetRandomNumber(0, GetRoom().Model.MapSizeY);
                        GetRoomUser().MoveTo(randomX, randomY);
                        break;

                    case "specified_range":
                        randomX = PhoenixEnvironment.GetRandomNumber(GetBotData().minX, GetBotData().maxX);
                        randomY = PhoenixEnvironment.GetRandomNumber(GetBotData().minY, GetBotData().maxY);
                        GetRoomUser().MoveTo(randomX, randomY);
                        break;
                }
                ActionTimer = PhoenixEnvironment.GetRandomNumber(1, 30);
            }
            else
            {
                this.ActionTimer--;
            }
        }
	}
}
