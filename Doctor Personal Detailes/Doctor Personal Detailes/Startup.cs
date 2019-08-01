using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Doctor_Personal_Detailes.Startup))]
namespace Doctor_Personal_Detailes
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
