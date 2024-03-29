package org.o7planning.websalephones.model.bo;

import java.util.ArrayList;

import org.o7planning.websalephones.model.bean.DienThoaiBean;
import org.o7planning.websalephones.model.dao.DienThoaiDao;

public class DienThoaiBo {
	DienThoaiDao dtDao = new DienThoaiDao();

	public ArrayList<DienThoaiBean> getDienThoai() throws Exception {
		return dtDao.getDienThoai();
	}
	
	public ArrayList<DienThoaiBean> getTimKiem(String tim) throws Exception {
		return dtDao.getTimKiem(tim);
	}
	
	public ArrayList<DienThoaiBean> getTimKiem2(String key) throws Exception {
		ArrayList<DienThoaiBean> ds = new ArrayList<DienThoaiBean>();
		for (DienThoaiBean d : getDienThoai()) {
			if(d.getTenDT().toUpperCase().trim().contains(key.toUpperCase().trim())||d.getMaLoai().contains(key.trim()))
				ds.add(d);
		}
		return ds;
	}

	public boolean themDienThoai(String maDT, String tenDT, long gia, String anh, String ngayNhap, long soLuong,
			String maLoai, int sao, String danhGia) throws Exception {
		return dtDao.themDienThoai(maDT, tenDT, gia, anh, ngayNhap, soLuong, maLoai, sao, danhGia);
	}

	public boolean themDienThoai2(String tenDT, long gia, String anh, Long soLuong, String maLoai) throws Exception {
		return dtDao.themDienThoai2(tenDT, gia, anh, soLuong, maLoai);
	}

	public boolean xoadt(int maDT) throws Exception {
		return dtDao.xoadt(maDT);
	}
	
	public int AddPhone(DienThoaiBean dtbean) throws Exception {
		return dtDao.AddPhone(dtbean);
	}
	
	public DienThoaiBean getDTBean(int maDT) throws Exception {
		return dtDao.getDTBean(maDT);
	}
	
	public boolean editPhome(int maDT, String tenDT, long gia, String anh, Long soLuong, String maLoai)
			throws Exception {
		return dtDao.editPhome(maDT, tenDT, gia, anh, soLuong, maLoai);
	}
}
