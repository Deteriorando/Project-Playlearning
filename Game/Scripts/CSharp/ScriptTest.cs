using Godot;
using System;


public partial class ScriptTest : Node
{
	String text = "Ola mundo!";
	
	public override void _Ready()
	{
		GD.Print(text);
	}
	
	public override void _Process(double delta)
	{
		
	}
}
