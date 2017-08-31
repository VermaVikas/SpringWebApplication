package ntech.swa.dao;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Component;

import ntech.swa.entity.DataTbl;

@Component
public class DataTblDaoImpl implements DataTblDao {

	@PersistenceContext
	EntityManager em;

	@SuppressWarnings("unchecked")
	@Override
	public List<DataTbl> fetchAllData() {
		List<DataTbl> list = new ArrayList<DataTbl>();
		String strQuery = "select model from DataTbl model";
		Query query = em.createQuery(strQuery);
		try{
			list = query.getResultList();
			System.out.println("Inside try block");
		}catch(Exception e){
			e.printStackTrace();
			System.out.println("Inside catch block");
			list = null;
		}
		return list;
	}
}
