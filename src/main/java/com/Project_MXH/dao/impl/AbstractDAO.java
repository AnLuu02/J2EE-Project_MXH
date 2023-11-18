package com.Project_MXH.dao.impl;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;
import java.util.ResourceBundle;

import com.Project_MXH.Mapper.RowMapper;
import com.Project_MXH.dao.GenericDAO;
import com.mysql.cj.jdbc.Blob;

public class AbstractDAO<T> implements GenericDAO<T> {

	ResourceBundle mybundle = ResourceBundle.getBundle("db");

	public Connection getConnection() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			String url = "jdbc:mysql://127.0.0.1:3306/mxh_fake_fb?useUnicode=yes&characterEncoding=UTF-8";
			String username = "root";
			String password = "";

//			Class.forName(mybundle.getString("driverName"));
//			String url = mybundle.getString("url");
//			String username = mybundle.getString("user");
//			String password = mybundle.getString("password");
			return DriverManager.getConnection(url, username, password);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;

	}

	private void setParameter(PreparedStatement statement, Object... parameters) {
		try {
			for (int i = 0; i < parameters.length; i++) {
				Object parameter = parameters[i];
				int index = i + 1;
				if (parameter instanceof Long) {
					statement.setLong(index, (Long) parameter);
				} else if (parameter instanceof String) {
					statement.setString(index, (String) parameter);
				} else if (parameter instanceof Timestamp) {
					statement.setTimestamp(index, (Timestamp) parameter);
				} else if (parameter instanceof Date) {
					statement.setDate(index, (Date) parameter);

				} else if (parameter instanceof Blob) {
					statement.setBlob(index, (Blob) parameter);

				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	@Override
	public <T> List<T> query(String sql, RowMapper<T> rowMapper, Object... parameters) {
		List<T> results = new ArrayList<>();
		Connection connection = null;
		PreparedStatement statement = null;
		ResultSet resultSet = null;
		try {
			connection = getConnection();
			statement = connection.prepareStatement(sql);
			setParameter(statement, parameters);
			resultSet = statement.executeQuery();
			while (resultSet.next()) {
				results.add(rowMapper.mapRow(resultSet));
			}
			return results;
		} catch (SQLException e) {
			System.out.println(e.getMessage());
			return null;

		} finally {
			try {
				if (connection != null) {
					connection.close();
				}
				if (statement != null) {
					statement.close();
				}
				if (resultSet != null) {
					resultSet.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

//	public void update(String sql, Object... parameters) {
//		Connection connection = null;
//		PreparedStatement statement = null;
//		try {
//			connection = getConnection();
//			connection.setAutoCommit(false);
//			statement = connection.prepareStatement(sql);
//			setParameter(statement, parameters);
//			statement.executeUpdate();
//			connection.commit();
//			System.out.println("upup");
//		} catch (SQLException e) {
//			System.out.println(e.getMessage());
//			if (connection != null) {
//				try {
//					connection.rollback();
//				} catch (SQLException e1) {
//					e1.printStackTrace();
//				} finally {
//					try {
//						if (connection != null) {
//							connection.close();
//						}
//						if (statement != null) {
//							statement.close();
//						}
//					} catch (SQLException e2) {
//						e2.printStackTrace();
//					}
//				}
//			}
//		}
//
//	}
	@Override
	public void update(String sql, Object... parameters) {
		Connection connection = null;
		PreparedStatement statement = null;

		try {
			connection = getConnection();
			connection.setAutoCommit(false);
			statement = connection.prepareStatement(sql);
			setParameters(statement, parameters);
			statement.executeUpdate();
			connection.commit();
			System.out.println("Cập nhật thành công");
		} catch (SQLException e) {
			System.err.println("Lỗi SQL: " + e.getMessage());
			if (connection != null) {
				try {
					connection.rollback();
				} catch (SQLException e1) {
					System.err.println("Lỗi khi rollback giao dịch: " + e1.getMessage());
				}
			}
		} finally {
			try {
				if (statement != null) {
					statement.close();
				}
				if (connection != null) {
					connection.setAutoCommit(true);
					connection.close();
				}
			} catch (SQLException e2) {
				System.err.println("Lỗi khi đóng tài nguyên: " + e2.getMessage());
			}
		}
	}

	private void setParameters(PreparedStatement statement, Object... parameters) throws SQLException {
		int parameterIndex = 1;

		for (Object parameter : parameters) {
			if (parameter instanceof ArrayList<?>) {
				ArrayList<?> arrayList = (ArrayList<?>) parameter;

				for (Object element : arrayList) {
					statement.setObject(parameterIndex++, element);
				}
			} else {
				statement.setObject(parameterIndex++, parameter);
			}
		}
	}

	@Override
	public Long insert(String sql, Object... parameters) {
		Connection connection = null;
		PreparedStatement statement = null;
		ResultSet resultSet = null;
		try {
			Long id = null;
			connection = getConnection();
			connection.setAutoCommit(false);
			statement = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
			setParameter(statement, parameters);
			statement.executeUpdate();
			resultSet = statement.getGeneratedKeys();

			if (resultSet.next()) {
				id = resultSet.getLong(1);
			}
			connection.commit();
			return id;
		} catch (SQLException e) {
			System.out.println(e.getMessage());
			if (connection != null) {
				try {
					connection.rollback();
				} catch (SQLException e1) {
					e1.printStackTrace();
				} finally {
					try {
						if (connection != null) {
							connection.close();
						}
						if (statement != null) {
							statement.close();
						}
						if (resultSet != null) {
							resultSet.close();
						}
					} catch (SQLException e2) {
						e2.printStackTrace();
					}
				}
			}
		}
		return null;
	}

}
