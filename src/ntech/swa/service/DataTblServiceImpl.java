package ntech.swa.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ntech.swa.dao.DataTblDao;
import ntech.swa.entity.DataTbl;

@Service
public class DataTblServiceImpl implements DataTblService {

	@Autowired
	DataTblDao dao;
	
	@Override
	public List<DataTbl> fetchAllData() {
		return dao.fetchAllData();
	}
	
}