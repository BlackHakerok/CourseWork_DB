using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(COUrsE_WorK.Startup))]
namespace COUrsE_WorK
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
