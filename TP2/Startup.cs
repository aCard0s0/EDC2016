using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(TP2.Startup))]
namespace TP2
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
