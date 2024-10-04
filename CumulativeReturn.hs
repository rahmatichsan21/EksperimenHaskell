-- Menghitung cumulative return dari investasi
-- Input berupa list dari return tahunan dari suatu aset
-- Hasil output adalah cumulative return

-- Fungsi untuk menghitung cumulative return
cumulativeReturn :: [Double] -> Double
cumulativeReturn returns = foldl (\acc r -> acc * (1 + r)) 1 returns - 1

-- Contoh data return tahunan (misalnya, data ini diambil dari return tahunan sebuah saham atau portofolio)
returnsData :: [Double]
returnsData = [0.05, 0.10, -0.02, 0.07] -- 5%, 10%, -2%, 7%

-- Fungsi utama
main :: IO ()
main = do
    -- Menghitung cumulative return berdasarkan data
    let cumulative = cumulativeReturn returnsData
    -- Menampilkan hasil
    putStrLn $ "Cumulative return dari investasi adalah: " ++ show (cumulative * 100) ++ "%"
