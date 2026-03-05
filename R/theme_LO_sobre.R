#' @title Theme for ggplot
#'
#' @description Object: Sober theme for ggplot
#' @importFrom ggplot2 facet_wrap facet_grid  theme_bw scale_colour_hue  label_value unit aes geom_vline geom_hline geom_label scale_colour_manual  geom_jitter position_jitter position_dodge scale_x_date scale_x_continuous scale_y_continuous scale_x_discrete scale_colour_discrete scale_linetype_manual geom_histogram geom_boxplot coord_flip element_blank arrow scale_alpha_manual geom_polygon coord_cartesian guide_legend geom_smooth geom_segment annotate element_text element_line element_rect geom_abline geom_bar  geom_errorbar geom_errorbarh geom_point ggplot ggtitle guides labs scale_color_manual scale_fill_manual scale_shape_manual theme unit xlab xlim ylab ylim geom_text geom_line geom_hline position_dodge layer_scales as_labeller labeller aes_q theme_light position_dodge2 geom_path element_text
#'
#' @return A ggplot2 theme object
#' @export
#'
#' @examples
#'PLOT_MAIN_Text <- ggplot + theme_LO_sobre


#Theme
theme_LO_sobre <- ggplot2::theme(plot.title = element_text( size=12,face="bold",hjust = 0.5),
                        axis.title.x = element_text( size=12),
                        axis.title.y = element_text( size=12),
                        axis.text.x  = element_text( size=10), 
                        axis.text.y  =  element_text( size=10),
                        panel.background = element_rect(fill = "white",colour = "white",
                                                        size = 0.5, linetype = "solid"),
                        panel.grid.minor.y = element_blank(),
                        panel.grid.major.y = element_blank(),
                        panel.grid.major.x= element_blank(),
                        panel.grid.minor.x= element_blank(),
                        axis.line = element_line(colour = "grey10", size = 0.4, linetype = "solid"))


