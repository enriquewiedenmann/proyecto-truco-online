<%@ page import="dto.PartidaPantallaDTO"%>
<%@ page import="dto.CartaDTO"%>
<%
	PartidaPantallaDTO partida = (PartidaPantallaDTO) request.getAttribute("partidaActual");
%>
<div style="background: #009933;" class="row">
	<div class="row" id="mesa">
		<div class="col-md-3" id="izquierda">
			<%
				int cc = 1;
				for (CartaDTO c : partida.getCartasMesajugadorIzquierda()) {
			%>
			<img src="assets/img/cartas/<%=c.getId()%>.PNG" class="carta"
				value="<%=c.getId()%>" style="transform: rotate(90deg);"> <br>
			<%
				cc++;
				}

				while (cc <= 3) {
			%>
			<img src="assets/img/cartas/0.PNG" class="carta"
				style="transform: rotate(90deg);"><br>
			<%
				cc++;
				}
			%>
		</div>
		<div class="col-md-6">
			<div class="row" id="frente">
				<%
					cc = 1;
					for (CartaDTO c : partida.getCartasMesaJugadorFrente()) {
				%>
				<img src="assets/img/cartas/<%=c.getId()%>.PNG" class="carta"
					value="<%=c.getId()%>" style="transform: rotate(180deg);">
				<%
					cc++;
					}

					while (cc <= 3) {
				%>
				<img src="assets/img/cartas/0.PNG" class="carta"
					style="transform: rotate(180deg);">
				<%
					cc++;
					}
				%>
			</div>
			<br> <br> <br> <br> <br>
			<div class="row" id="propias">
				<%
					cc = 1;
					for (CartaDTO c : partida.getCartasMesaJugador()) {
				%>
				<img src="assets/img/cartas/<%=c.getId()%>.PNG" class="carta"
					value="<%=c.getId()%>" style="transform: rotate(00deg);">
				<%
					cc++;
					}

					while (cc <= 3) {
				%>
				<img src="assets/img/cartas/00.PNG" class="carta">
				<%
					cc++;
					}
				%>
			</div>


		</div>
		<div class="col-md-3" id="derecha">
			<%
				cc = 1;
				for (CartaDTO c : partida.getCartasMesaJugadorDerecha()) {
			%>
			<img src="assets/img/cartas/<%=c.getId()%>.PNG" class="carta"
				value="<%=c.getId()%>" style="transform: rotate(270deg);"> <br>
			<%
				cc++;
				}

				while (cc <= 3) {
					%>
			<img src="assets/img/cartas/0.PNG" class="carta"
				style="transform: rotate(270deg);"><br>
			<%cc++;
				}
			%>
		</div>
	</div>
	<br>
	<div class="row">

		<div id="contador" class="col-md-4"></div>
		<div class="col-md-4" id="cartasJugador">

			<%
				cc = 1;
				for (CartaDTO c : partida.getCartasJugador()) {
			%>
			<img src="assets/img/cartas/<%=c.getId()%>.PNG" class="carta"
				value="<%=c.getId()%>"
				onclick="loadDiv('principal', 'Partidas?action=jugarCarta', 'cartaId=<%=c.getId()%>&partidaId=<%=partida.getPartidaID()%>')"
				style="transform: rotate(0deg);">
			<%
				cc++;
				}

				while (cc <= 3) {
					%>
			<img src="assets/img/cartas/00.PNG" class="carta">
			<%
					cc++;
				}
			%>

		</div>
		<div id="puntosEnvido" class="col-md-4"></div>
	</div>
	<hr>
	<div class="row" id="botonera">
		<div align="center" class="btn-group-sm">
			<button type="button" class="btn btn-danger" onclick="loadDiv('mensajes', 'Partidas?action=cantarEnvite', 'partidaId=<%=partida.getPartidaID()%>&envite=envido')">ENVIDO</button>
			<button type="button" class="btn btn-danger" onclick="loadDiv('mensajes', 'Partidas?action=cantarEnvite', 'partidaId=<%=partida.getPartidaID()%>&envite=envidoEnvido')">ENVIDO
				ENVIDO</button>
			<button type="button" class="btn btn-danger" onclick="loadDiv('mensajes', 'Partidas?action=cantarEnvite', 'partidaId=<%=partida.getPartidaID()%>&envite=realEnvido')">REAL
				ENVIDO</button>
			<button type="button" class="btn btn-danger" onclick="loadDiv('mensajes', 'Partidas?action=cantarEnvite', 'partidaId=<%=partida.getPartidaID()%>&envite=faltaEnvido')">FALTA
				ENVIDO</button>
			<br>
			<button type="button" class="btn btn-danger" onclick="loadDiv('mensajes', 'Partidas?action=cantarEnvite', 'partidaId=<%=partida.getPartidaID()%>&envite=truco')">TRUCO</button>
			<button type="button" class="btn btn-danger" onclick="loadDiv('mensajes', 'Partidas?action=cantarEnvite', 'partidaId=<%=partida.getPartidaID()%>&envite=reTruco')">RE
				TRUCO</button>
			<button type="button" class="btn btn-danger" onclick="loadDiv('mensajes', 'Partidas?action=cantarEnvite', 'partidaId=<%=partida.getPartidaID()%>&envite=valeCuatro')">VALE
				4</button>
			<br>
			<button type="button" class="btn btn-danger" onclick="loadDiv('mensajes', 'Partidas?action=responderEnvite', 'partidaId=<%=partida.getPartidaID()%>&respuesta=si&envite=<% if(partida.getUltimoCanto() != null) out.print(partida.getUltimoCanto().getDescTipoCanto()); %>')">QUIERO</button>
			<button type="button" class="btn btn-danger" onclick="loadDiv('mensajes', 'Partidas?action=responderEnvite', 'partidaId=<%=partida.getPartidaID()%>&respuesta=no&envite=<% if(partida.getUltimoCanto() != null) out.print(partida.getUltimoCanto().getDescTipoCanto()); %>')">NO
				QUIERO</button>
			<button type="button" class="btn btn-danger" onclick="loadDiv('mensajes', 'Partidas?action=retirarse', 'partidaId=<%=partida.getPartidaID()%>')">ME
				VOY</button>
		</div>

	</div>
</div>