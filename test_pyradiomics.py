import radiomics
from radiomics import featureextractor
import SimpleITK as sitk

# Criando uma imagem sintética para testar
image = sitk.Image(64, 64, sitk.sitkUInt8)
image[32, 32] = 255  # Criando um ponto branco no meio

# Criando uma máscara sintética
mask = sitk.Image(64, 64, sitk.sitkUInt8)
mask[30:35, 30:35] = 1  # Definindo uma pequena região como ROI

# Criando um extrator de features
extractor = featureextractor.RadiomicsFeatureExtractor()

# Extraindo features da imagem sintética
features = extractor.execute(image, mask)

# Exibindo algumas features
for key, value in list(features.items())[:10]:  # Exibir apenas as 10 primeiras
    print(f"{key}: {value}")
