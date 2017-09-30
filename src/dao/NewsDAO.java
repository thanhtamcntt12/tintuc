package dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import entities.News;

@Repository
public class NewsDAO {

	@Autowired
	private JdbcTemplate jdbctemp;

	@SuppressWarnings({ "unchecked", "rawtypes" })
	public List<News> getList() {
		String sql = "SELECT * FROM news";
		return jdbctemp.query(sql, new BeanPropertyRowMapper(News.class));
	}

	public int addNews(News objNews) {
		String sql = "INSERT INTO news (name, title, description, image) VALUES (?,?,?,?)";
		return jdbctemp.update(sql,
				new Object[] { objNews.getName(), objNews.getTitle(), objNews.getDescription(), objNews.getImage() });
	}

	public int delNews(String id) {
		String sql = "DELETE FROM news WHERE id = ?";
		return jdbctemp.update(sql, new Object[] { id });
	}

	@SuppressWarnings({ "unchecked", "rawtypes" })
	public News getItem(String idNews) {
		String sql = "SELECT * FROM news WHERE id = ?";
		return (News) jdbctemp.queryForObject(sql, new Object[] { idNews }, new BeanPropertyRowMapper(News.class));
	}

	public int editNews(News objNews) {
		String sql = "UPDATE news SET name = ?, title = ?, description = ?, image = ?";
		return jdbctemp.update(sql,
				new Object[] { objNews.getName(), objNews.getTitle(), objNews.getDescription(), objNews.getImage() });
	}

}
