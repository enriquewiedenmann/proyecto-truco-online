package dto;
import java.io.Serializable;

public class ParejaDTO implements Serializable {
	private static final long serialVersionUID = 31696896084308469L;
	private Integer id;
	private JugadorDTO jugador1;
	private JugadorDTO jugador2;

	public ParejaDTO(Integer id, JugadorDTO jugador1, JugadorDTO jugador2) {
		this.id = id;
		this.jugador1 = jugador1;
		this.jugador2 = jugador2;
	}

	public ParejaDTO(Integer id) {
		this.id = id;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public JugadorDTO getJugador1() {
		return jugador1;
	}

	public void setJugador1(JugadorDTO jugador1) {
		this.jugador1 = jugador1;
	}

	public JugadorDTO getJugador2() {
		return jugador2;
	}

	public void setJugador2(JugadorDTO jugador2) {
		this.jugador2 = jugador2;
	}
}