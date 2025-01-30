using System.Windows.Controls;

namespace MasterFloorApp.UI.UserControls
{
    /// <summary>
    /// Логика взаимодействия для PartnerInfoControl.xaml
    /// </summary>
    public partial class PartnerInfoControl : UserControl
    {
        public PartnerInfoControl()
        {
            InitializeComponent();
        }

        /// <summary>
        /// Метод загрузки скидки партнера.
        /// </summary>
        public void SetTotalQuantity(int discount) => TblDiscount.Text = $"{discount}%";
    }
}