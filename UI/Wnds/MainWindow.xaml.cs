using MasterFloorApp.Data.Model;
using MasterFloorApp.UI.Pgs;
using MasterFloorApp.UI.UserControls;
using System.Linq;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Navigation;

namespace MasterFloorApp.UI.Wnds
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public Frame mainFrame;
        public MainWindow()
        {
            InitializeComponent();
            LoadPartners();

            mainFrame = FrmMain;
        }


        /// <summary>
        /// Инициализация партнеров при загрузке.
        /// </summary>
        private void LoadPartners()
        {
            MasterFloorModel.GetContext();
            var partners = MasterFloorModel.Context.Partner.ToList();

            foreach (var partner in partners)
            {
                var partnerControl = new PartnerInfoControl();

                partnerControl.DataContext = partner;
                int discount = GetTotalProductQuantity(partner);

                partnerControl.SetTotalQuantity(discount);
                PartnersPanel.Children.Add(partnerControl);
            }
        }

        /// <summary>
        /// Метод просчета скидки партнеру.
        /// </summary>
        private int GetTotalProductQuantity(Partner partner)
        {
            int totalQuantity = MasterFloorModel.Context.PartnerProduct
                .Where(pp => pp.IdPartner == partner.Id)
                .Sum(pp => (int)pp.QuantityProduct);

            int discount = 0;

            if (totalQuantity > 10000 && totalQuantity < 50000)
                discount = 5;
            else if (totalQuantity > 50000 && totalQuantity < 300000)
                discount = 10;
            else if (totalQuantity > 300000)
                discount = 15;

            return discount;
        }


        /// <summary>
        /// Логика взаимодействия с кнопкой добавления партнера
        /// </summary>
        private void AddBtn_Click(object sender, RoutedEventArgs e)
        {
            FrmMain.NavigationUIVisibility = NavigationUIVisibility.Visible;

            FrmMain.Navigate(new PgAddPartner(this));
            CloseBtn.Visibility = Visibility.Visible;
            Title = "Добавление партнера";
        }
    }
}