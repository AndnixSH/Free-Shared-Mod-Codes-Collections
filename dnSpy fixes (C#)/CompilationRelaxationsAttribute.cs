//This is to fix "missing compiler required member" error

namespace System.Runtime.CompilerServices
{
	
	[AttributeUsage(AttributeTargets.Assembly | AttributeTargets.Module | AttributeTargets.Class | AttributeTargets.Method)]
	[Serializable]
	public class CompilationRelaxationsAttribute : Attribute
	{

		[__DynamicallyInvokable]
		public CompilationRelaxationsAttribute(int relaxations)
		{
			this.m_relaxations = relaxations;
		}

		public CompilationRelaxationsAttribute(CompilationRelaxations relaxations)
		{
			this.m_relaxations = (int)relaxations;
		}

		public int CompilationRelaxations
		{
			get
			{
				return this.m_relaxations;
			}
		}

		private int m_relaxations;
	}
}
