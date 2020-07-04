package com.huaji.wms.exception;

/**
 * SupplierManageService异常
 *
 * @author Ken
 * @since 2020/3/8.
 */
public class SupplierManageServiceException extends BusinessException {

    SupplierManageServiceException(){
        super();
    }

    public SupplierManageServiceException(Exception e){
        super(e);
    }

    SupplierManageServiceException(Exception e, String exceptionDesc){
        super(e, exceptionDesc);
    }

}
