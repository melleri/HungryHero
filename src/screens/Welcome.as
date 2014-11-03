package screens
{
	import com.greensock.Tweenlite;
	
	import starling.display.Button;
	import starling.display.Image;
	import starling.display.Sprite;
	import starling.events.Event;
	
	public class Welcome extends Sprite
	{
		private var bg:Image;
		private var title:Image
		private var hero:Image;
		
		private var playBtn:Button;
		private var aboutBtn:Button;
		
		public function Welcome()
		{
			super();
			this.addEventListener(starling.events.Event.ADDED_TO_STAGE, onAddedToStage);
		}
		private function onAddedToStage(event:Event):void
		{
			trace("welcome screen initialized");
			
			drawScreen();
		}
		
		private function drawScreen():void
		{
			bg = new Image(assets.getTexture("BgWelcome"));
			this.addChild(bg);
			
			title = new Image(assets.getTexture("WelcomeTitle"));
			title.x = 440;
			title.y = 20;
			this.addChild(title);
			
			hero = new Image(assets.getTexture("WelcomeHero"));
			this.addChild(hero);
			
			playBtn = new Button(assets.getTexture("WelcomePlayBtn"));
			playBtn.x = 500;
			playBtn.y = 260;
			this.addChild(playBtn);
			
			aboutBtn = new Button(assets.getTexture("WelcomeAboutBtn"));
			aboutBtn.x = 410;
			aboutBtn.y = 380;
			this.addChild(aboutBtn);	
		}
		
		public function intialize():void
		{
			this.visible = true;
			
			hero.x = -hero.width;
			hero.y = 100;
		
			TweenLite.to(hero, 2, {x: 80});
			
			this.addEventListener(Event.ENTER_FRAME, heroAnimation);
		}
		
		private function heroAnimation(event:Event):void
		{
			var currentDate:Date = new Date();
			hero.y = 100 + Math.cos(Math.cos(currentDate.getTime() * 0.005 * 25);
			playBtn.y = 260 + Math.cos(Math.cos(currentDate.getTime() * 0.005 * 10);
			aboutBtn.y = 380 + Math.cos(Math.cos(currentDate.getTime() * 0.005 * 10);
				
		}
	}
}