package com.huaji.wms.exception;

/**
 * StorageManageServiceException异常
 *
 * @author Ken
 * @since 2020/3/8.
 */
public class StorageManageServiceException extends BusinessException {

    StorageManageServiceException(){
        super();
    }

    public StorageManageServiceException(Exception e){
        super(e);
    }

    StorageManageServiceException(Exception e, String exceptionDesc){
        super(e, exceptionDesc);
    }

}
