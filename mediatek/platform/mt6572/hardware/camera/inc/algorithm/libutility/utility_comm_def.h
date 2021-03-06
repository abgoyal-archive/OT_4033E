

#ifndef _UTL_COMM_DEF_H_
#define _UTL_COMM_DEF_H_

#include "kal_release.h"
#include "mm_comm_def.h"

/*-----------------------------------Feature ENUM-----------------------------------------------*/
typedef enum
{
    UTL_FEATURE_BEGIN,
    UTL_FEATURE_BILINEAR_RESIZER,
    UTL_FEATURE_CAL_SAD,
    UTL_FEATURE_JPEG_DECODE,
    UTL_FEATURE_IMAGE_CLIP,
    UTL_FEATURE_EXT_MEM_SWITCH_CACHE,
    UTL_FEATURE_MAX
}    UTL_FEATURE_ENUM;

/*---------------------------------Struct Definition-------------------------------------------------*/

// UTL_FEATURE_BILINEAR_RESIZER //
typedef struct
{
    kal_uint16 *srcAddr;
    kal_uint32 srcWidth;
    kal_uint32 srcHeight;
    kal_uint16 *dstAddr;
    kal_uint32 dstWidth;
    kal_uint32 dstHeight;
}  UTL_BILINEAR_RESIZER_STRUCT, *P_UTL_BILINEAR_RESIZER_STRUCT; 

typedef struct
{
    kal_uint8*  Img1;
    kal_uint16  Img1W;
    kal_uint16  Img1H;
    kal_uint8*  Img2;
    kal_uint16  Img2W;
    kal_uint16  Img2H;
    kal_uint16  RoiW;
    kal_uint16  RoiH;
    kal_uint8   SubW;
    kal_uint8   SubH;
} UTL_SAD_PARA_STRUCT, *P_UTL_SAD_PARA_STRUCT;

typedef struct
{
    kal_uint32 Sum;
    kal_uint32 Count;
} UTL_SAD_RESULT_STRUCT, *P_UTL_SAD_RESULT_STRUCT;

typedef struct 
{
    kal_uint8  *ImageSrcBuffer;  // source encoded jpeg buffer address to be clip
    kal_uint32 ImageSrcBufferSize;   // source encoded jpeg buffer size to be clip   
    kal_uint32 SrcWidth;               // source encoded jpeg image size
    kal_uint32 SrcHeight;
    kal_uint32 SrcRoiX;               // start point x of ROI of source image
    kal_uint32 SrcRoiY;               // start point y of ROI of source image
    kal_uint32 RoiWidth;                   // width of ROI
    kal_uint32 RoiHeight;                   // height of ROI
    kal_uint8  *ImageDstBuffer;  // dest decoded jpeg buffer to clip to, RGB565
    MM_IMAGE_FORMAT_ENUM  ImageSrcFormat;     // src color format (JPEG/YUV420)
    MM_IMAGE_FORMAT_ENUM  ImageDstFormat;     // dst color format (RGB565/YUV420/Y8)
    kal_uint32 DstWidth;               // dest decoded jpeg image size
    kal_uint32 DstHeight;                  
    kal_uint32 DstRoiX;               // start point x of ROI of dest image
    kal_uint32 DstRoiY;               // start point y of ROI of dest image
    kal_bool IsSwitchCachable;
    kal_uint32 ExtMemAddr;         // external working memory
    kal_uint32 ExtMemSize;
} UTL_CLIP_STRUCT, *P_UTL_CLIP_STRUCT;

typedef struct
{
    kal_uint8   *ImageBuffer;                   // source image address
    kal_uint32 ImageWidth;                      // source image size
    kal_uint32 ImageHeight;
    MM_IMAGE_FORMAT_ENUM  ImageFormat;        // src color format (RGB565/YUV420)
    kal_uint8  *JpegBuffer;                         // dest encoded jpeg buffer
    kal_uint32 JpegSize;                            // dest encoded jpeg size
    kal_uint32 ExtMemAddr;                      // external working memory
    kal_uint32 ExtMemSize;    
} UTL_JPEG_ENC_STRUCT, *P_UTL_JPEG_ENC_STRUCT;

typedef struct
{
    kal_uint32 *pMemAddr;
    kal_uint32 Size;
    kal_bool CacheableFlag;
} UTL_SWITCH_CACHE_STRUCT, *P_UTL_SWITCH_CACHE_STRUCT;

typedef struct
{
    kal_bool Ret;
} UTL_SWITCH_CACHE_RESULT_STRUCT, *P_UTL_SWITCH_CACHE_RESULT_STRUCT;

MM_ERROR_CODE_ENUM UtlFeatureCtrl(UTL_FEATURE_ENUM FeatureId,
                                    void* pParaIn, void* pParaOut,kal_uint16 ParaOutLen);
void UtlCalSad(P_UTL_SAD_PARA_STRUCT pSadPara, P_UTL_SAD_RESULT_STRUCT pSadResult);
void UtlImageCLip(P_UTL_CLIP_STRUCT pClipInfo);
/*-----------------------------------------------------------------------------------------------*/
 #endif	// _UTL_COMM_DEF_H_
