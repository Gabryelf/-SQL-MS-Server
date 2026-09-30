using System;
using Microsoft.Data.SqlClient;

class Program
{
    static void Main()
    {
        // 1. Строка подключения — та же, что в Python и VS
        string connectionString =
            "Data Source=(localdb)\\MSSQLLocalDB;" +
            "Initial Catalog=TraineeDB;" +
            "Integrated Security=True;" +
            "TrustServerCertificate=True;";

        // 2. using — автоматически закроет соединение в конце блока
        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            connection.Open();
            Console.WriteLine("Соединение открыто.");

            // 3. Создаём команду: SQL + соединение
            string sql = "SELECT StudentId, FirstName, LastName, Age FROM Students";
            SqlCommand command = new SqlCommand(sql, connection);

            // 4. Выполняем и получаем reader
            using (SqlDataReader reader = command.ExecuteReader())
            {
                // 5. Читаем построчно
                while (reader.Read())
                {
                    int id = reader.GetInt32(0);            // по индексу
                    string first = reader.GetString(1);
                    string last = reader.GetString(2);
                    int age = reader.GetInt32(3);

                    Console.WriteLine($"{id}: {first} {last}, возраст {age}");
                }
            }
        }

        Console.WriteLine("Готово. Нажмите любую клавишу...");
        Console.ReadKey();
    }
}
