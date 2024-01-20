from array2gif import write_gif  # version: 1.0.4
import librosa  # version: 0.8.1
import numpy  # version: 1.19.5

num_freqs = 32
quantize = 2
min_db = -60
max_db = 30
fft_window_size = 2048
frame_step_size = 512
window_function_type = 'hann'
red_pixel = [255, 0, 0]
white_pixel = [255, 255, 255]
y, sample_rate = librosa.load("flag.mp3")  # sample rate is 22050 Hz

spectrogram = numpy.around( # 四舍五入
    librosa.power_to_db(
        librosa.feature.melspectrogram(
            y, sample_rate, n_mels=num_freqs,
            n_fft=fft_window_size, 
            hop_length=frame_step_size, 
            window=window_function_type
        )
    ) / quantize
) * quantize

gif_data = [
    numpy.kron(
        numpy.array([
            [
                red_pixel if freq % 2 and round(frame[freq // 2]) > threshold else white_pixel 
                for threshold in list(range(min_db, max_db + 1, quantize))[::-1]
            ] 
            for freq in range(num_freqs * 2 + 1)#遍历所有频率带的行
        ]), #将之前生成的像素列表组合成一个二维数组表示一帧图像
        numpy.ones([quantize, quantize, 1])
    ) #使用kronecker乘积扩展每个像素，使每个像素占据quantize*quantize的区域
    for frame in spectrogram.transpose()# 使每一列对应一个时间帧，对每一列频谱图数据进行处理（frame是每一列的频谱数据）
]

write_gif(gif_data, 'flag.gif', fps=sample_rate/frame_step_size)