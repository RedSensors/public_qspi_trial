
module qspi_trial(
	input 		   MAX10_CLK_50MHZ,
	
	//////////// SDRAM
	output		    [12:0]		SDRAM_ADDR, 
	output		     [1:0]		SDRAM_BS,
	output		          		SDRAM_CAS_N,
	output		          		SDRAM_CKE,
	output		          		SDRAM_CS_N,
	output							SDRAM_CLK,
	inout 		    [15:0]		SDRAM_DQ,
	output		     [1:0]		SDRAM_DQM,
	output		          		SDRAM_RAS_N,
	output		          		SDRAM_WE_N,
	
	//////////// QSPI
	output							QSPI_CLK,
	output							QSPI_CS_N,
	inout[3:0]						QSPI_IO
);

    qsys u0 (
			.clk_clk          	(MAX10_CLK_50MHZ),
			.reset_reset_n    	(1'b1),
		  
			.sdram_wire_addr     (SDRAM_ADDR),
			.sdram_wire_ba       (SDRAM_BS),
			.sdram_wire_cas_n    (SDRAM_CAS_N),
			.sdram_wire_cke      (SDRAM_CKE),
			.sdram_wire_cs_n     (SDRAM_CS_N),
			.sdram_wire_dq       (SDRAM_DQ),
			.sdram_wire_dqm      (SDRAM_DQM),
			.sdram_wire_ras_n    (SDRAM_RAS_N),
			.sdram_wire_we_n     (SDRAM_WE_N),
			.sdram_clk_clk			(SDRAM_CLK)/*,
			  
			.qspi_pins_dclk   	(QSPI_CLK),
			.qspi_pins_ncs    	(QSPI_CS_N),
			.qspi_pins_data   	(QSPI_IO)*/
    );

endmodule
