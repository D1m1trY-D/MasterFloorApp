using MasterFloorApp.Data.Model;
using MasterFloorApp.UI.Wnds;

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace MasterFloorApp.UI.Pgs
{
    /// <summary>
    /// Логика взаимодействия для PgAddPartner.xaml
    /// </summary>
    public partial class PgAddPartner : Page
    {
        private MainWindow _mainWindow;
        public PgAddPartner(MainWindow mainWindow)
        {
            InitializeComponent();
            _mainWindow = mainWindow;
        }

        private void AddPartner_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                if (!int.TryParse(TbxRating.Text, out int rating) || rating < 0)
                {
                    MessageBox.Show("Рейтинг должен быть целым неотрицательным числом.", "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
                    return;
                }

                if (string.IsNullOrEmpty(TbxNamePartner.Text) || string.IsNullOrEmpty(TbxDirectorName.Text) ||
                    string.IsNullOrEmpty(TbxDirectorFirstName.Text) || string.IsNullOrEmpty(TbxDirectorPartonymic.Text) ||
                    string.IsNullOrEmpty(TbxPhone.Text) || string.IsNullOrEmpty(TbxEmail.Text) ||
                    string.IsNullOrEmpty(TbxAddress.Text))
                {
                    MessageBox.Show("Пожалуйста, заполните все поля.", "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
                    return;
                }

                var newPartner = new Partner
                {
                    Name = TbxNamePartner.Text,
                    DirectorName = TbxDirectorName.Text,
                    DirectorFirstName = TbxDirectorFirstName.Text,
                    DirectorPatronymic = TbxDirectorPartonymic.Text,
                    Email = TbxEmail.Text,
                    Phone = TbxPhone.Text,
                    LegalAddress = TbxAddress.Text,
                    Rating = rating,
                    IdPartnerType = (int)((ComboBoxItem)ComboPartnerType.SelectedItem).Tag
                };

                MasterFloorModel.GetContext();

                MasterFloorModel.Context.Partner.Add(newPartner);
                MasterFloorModel.Context.SaveChanges();

                MessageBox.Show("Партнер успешно добавлен!", "Успех", MessageBoxButton.OK, MessageBoxImage.Information);

                _mainWindow.mainFrame.Navigate(null);
                _mainWindow.Title = "Главная";
            }
            catch (Exception ex)
            {
                MessageBox.Show($"Произошла ошибка при сохранении: {ex.Message}", "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }
    }
}