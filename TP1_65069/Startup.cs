using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(TP1_65069.Startup))]
namespace TP1_65069
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
