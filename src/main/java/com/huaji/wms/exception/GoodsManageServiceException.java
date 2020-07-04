package com.huaji.wms.exception;

/**
 * GoodsManageService异常
 *
 * @author Ken
 * @since 2020/3/8.
 */
public class GoodsManageServiceException extends BusinessException {

    GoodsManageServiceException(){
        super();
    }

    public GoodsManageServiceException(Exception e){
        super(e);
    }

    GoodsManageServiceException(Exception e, String exceptionDesc){
        super(e, exceptionDesc);
    }

}
