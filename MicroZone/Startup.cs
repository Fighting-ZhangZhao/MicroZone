using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(MicroZone.Startup))]
namespace MicroZone
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
