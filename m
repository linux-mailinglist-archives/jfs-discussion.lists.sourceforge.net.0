Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 511D0C21BE3
	for <lists+jfs-discussion@lfdr.de>; Thu, 30 Oct 2025 19:22:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:
	List-Id:Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:
	Sender:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xpGmHCfoWO9N3K9ylBfL+1zyda+6Y9esIo8NqQ9DiDA=; b=imut8etwINDf8BwhShzbSUoDln
	MbH9OOuxPGrDAoFIT5AKDqwZVuulEWpFWgwjtvntBn5tpBD8dESxZH4OgZwWEzwpI7W2ooX0z0+9g
	VfXEef/X5SZpaatVIUtV1+Jh/sS6N0GRWxECBTH+cy22bid4Vgfg3LKHDaHYMrganTXQ=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vEXGx-0006dS-VI;
	Thu, 30 Oct 2025 18:21:20 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dsterba@suse.cz>) id 1vEXGv-0006dJ-T3
 for jfs-discussion@lists.sourceforge.net;
 Thu, 30 Oct 2025 18:21:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=35Rgq9aWXXCYtegCi5Nd8FkRSQcbW288tXIHMGLSzos=; b=b9pshvE2sPR+Km+jmPKgm/r+1B
 05yQmUM70LcvvXnlOM37gyr6qurfU1vjBkY7fjawt3zrlrjFuv725tdI9COX8pSwkRfvHHXJaiQZI
 0Wu2JlfjyY6Xu2/3EXDRtEyOZ3EqvW+HcpGaTnhBptj6mG2D8dWhIrrCetYZ14rrmM0U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=35Rgq9aWXXCYtegCi5Nd8FkRSQcbW288tXIHMGLSzos=; b=XTkFtqnx6SWgdcBO3PTfijbz8q
 oK9xlixhD1qYStppNFjIE6NkbDPomhWlML+t82ni3EW5PK6lYsOTxGyYe78GlLHJaZGq1Yz8AHavU
 glb2rUbmTvRlUbPpJRi1VTGKEzHSoOwBuyCyXZieg9Ui5upCB85uebX3pt6RqLS1yXPk=;
Received: from smtp-out1.suse.de ([195.135.223.130])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vEXGv-0005Ul-Uq for jfs-discussion@lists.sourceforge.net;
 Thu, 30 Oct 2025 18:21:18 +0000
Received: from imap1.dmz-prg2.suse.org (imap1.dmz-prg2.suse.org
 [IPv6:2a07:de40:b281:104:10:150:64:97])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-out1.suse.de (Postfix) with ESMTPS id 0559D3377A;
 Thu, 30 Oct 2025 18:21:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1761848466;
 h=from:from:reply-to:reply-to:date:date:message-id:message-id:to:to:
 cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=35Rgq9aWXXCYtegCi5Nd8FkRSQcbW288tXIHMGLSzos=;
 b=j/xDpomipRi27Xvy5GBORux7vuiP/KIQypNiMxJ8XY5CAbXUZwuZU26mxFjInTO+/6/9Az
 yp4Zk/5YrAK9vfNS0FBWYcF1k/XIUs+WnhQtbidqXPDPPSHgwIfBn/uKBM9DiMXh76p25L
 QfOM3INTM8rTbEHkNjI+ohNh/JXVzxw=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1761848466;
 h=from:from:reply-to:reply-to:date:date:message-id:message-id:to:to:
 cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=35Rgq9aWXXCYtegCi5Nd8FkRSQcbW288tXIHMGLSzos=;
 b=BgUnj8Qjc9JEkRhbNm9umHTuI9hdu2AQHZAeqr0cUg5Ti1fHlpDUPAO2VvjgWm+mkJeEB7
 bh0sjWg6UEJwvqCA==
Authentication-Results: smtp-out1.suse.de;
 dkim=pass header.d=suse.cz header.s=susede2_rsa header.b=cCgp4+xR;
 dkim=pass header.d=suse.cz header.s=susede2_ed25519 header.b=Y02q4QQG
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1761848465;
 h=from:from:reply-to:reply-to:date:date:message-id:message-id:to:to:
 cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=35Rgq9aWXXCYtegCi5Nd8FkRSQcbW288tXIHMGLSzos=;
 b=cCgp4+xRw5fM4joQmxNWc82CsEDmpI8WHpVjHkG7LIHe5MO5lOaHu6CJRJPph59idlGVSo
 1GEifCUC/UXW3iHjs+dN0oy9hpXC3sev/rDh51NDLoFJZ4y22TYsuPgNZzxHlmVyOE3yMt
 eR70wdyU9CS8HtyYY/REg7rgXoaEcgo=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1761848465;
 h=from:from:reply-to:reply-to:date:date:message-id:message-id:to:to:
 cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=35Rgq9aWXXCYtegCi5Nd8FkRSQcbW288tXIHMGLSzos=;
 b=Y02q4QQGUEocIdhPkNnWmwYmiyhHHVVYkXfo4ejKJow+PUEPO/8nr0WoTihHxbaNeNEJOT
 4BEYFr6dQxGabwAw==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id D15001396A;
 Thu, 30 Oct 2025 18:21:04 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
 by imap1.dmz-prg2.suse.org with ESMTPSA id njTnMpCsA2lrBgAAD6G6ig
 (envelope-from <dsterba@suse.cz>); Thu, 30 Oct 2025 18:21:04 +0000
Date: Thu, 30 Oct 2025 19:21:03 +0100
From: David Sterba <dsterba@suse.cz>
To: Christoph Hellwig <hch@lst.de>
Message-ID: <20251030182103.GC13846@twin.jikos.cz>
References: <20251024080431.324236-1-hch@lst.de>
 <20251024080431.324236-6-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251024080431.324236-6-hch@lst.de>
User-Agent: Mutt/1.5.23.1-rc1 (2014-03-12)
X-Spam-Level: 
X-Spam-Flag: NO
X-Rspamd-Queue-Id: 0559D3377A
X-Rspamd-Action: no action
X-Rspamd-Server: rspamd1.dmz-prg2.suse.org
X-Spamd-Result: default: False [-4.21 / 50.00]; BAYES_HAM(-3.00)[100.00%];
 NEURAL_HAM_LONG(-1.00)[-1.000];
 HAS_REPLYTO(0.30)[dsterba@suse.cz];
 R_DKIM_ALLOW(-0.20)[suse.cz:s=susede2_rsa,suse.cz:s=susede2_ed25519];
 NEURAL_HAM_SHORT(-0.20)[-1.000]; MIME_GOOD(-0.10)[text/plain];
 MX_GOOD(-0.01)[]; RCVD_VIA_SMTP_AUTH(0.00)[]; ARC_NA(0.00)[];
 RCPT_COUNT_TWELVE(0.00)[26]; MIME_TRACE(0.00)[0:+];
 R_RATELIMIT(0.00)[to_ip_from(RL9qow8fch3pfgh43469ius4rs)];
 TO_DN_SOME(0.00)[]; FUZZY_RATELIMITED(0.00)[rspamd.com];
 REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
 DKIM_SIGNED(0.00)[suse.cz:s=susede2_rsa,suse.cz:s=susede2_ed25519];
 FROM_EQ_ENVFROM(0.00)[]; FROM_HAS_DN(0.00)[];
 RCVD_TLS_ALL(0.00)[]; REPLYTO_ADDR_EQ_FROM(0.00)[];
 DBL_BLOCKED_OPENRESOLVER(0.00)[suse.com:email];
 RCVD_COUNT_TWO(0.00)[2]; TO_MATCH_ENVRCPT_ALL(0.00)[];
 DKIM_TRACE(0.00)[suse.cz:+]
X-Spam-Score: -4.21
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, Oct 24, 2025 at 10:04:16AM +0200, Christoph Hellwig
 wrote: > In preparation for changing the filemap_fdatawrite_wbc API to not
 expose > the writeback_control to the callers, push the wbc decla [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1vEXGv-0005Ul-Uq
Subject: Re: [Jfs-discussion] [PATCH 05/10] btrfs: push struct
 writeback_control into start_delalloc_inodes
X-BeenThere: jfs-discussion@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <jfs-discussion.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/jfs-discussion>, 
 <mailto:jfs-discussion-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=jfs-discussion>
List-Post: <mailto:jfs-discussion@lists.sourceforge.net>
List-Help: <mailto:jfs-discussion-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/jfs-discussion>, 
 <mailto:jfs-discussion-request@lists.sourceforge.net?subject=subscribe>
Reply-To: dsterba@suse.cz
Cc: Latchesar Ionkov <lucho@ionkov.net>, jfs-discussion@lists.sourceforge.net,
 Jan Kara <jack@suse.cz>, Dominique Martinet <asmadeus@codewreck.org>,
 Christian Schoenebeck <linux_oss@crudebyte.com>, linux-mm@kvack.org,
 Joseph Qi <joseph.qi@linux.alibaba.com>, Mark Fasheh <mark@fasheh.com>,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>, linux-ext4@vger.kernel.org,
 Josef Bacik <josef@toxicpanda.com>, linux-block@vger.kernel.org,
 ocfs2-devel@lists.linux.dev, Damien Le Moal <dlemoal@kernel.org>,
 Joel Becker <jlbec@evilplan.org>, David Sterba <dsterba@suse.com>,
 Eric Van Hensbergen <ericvh@kernel.org>,
 Christian Brauner <brauner@kernel.org>, Chris Mason <clm@fb.com>,
 Johannes Thumshirn <johannes.thumshirn@wdc.com>, v9fs@lists.linux.dev,
 linux-xfs@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 linux-btrfs@vger.kernel.org, Alexander Viro <viro@zeniv.linux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Fri, Oct 24, 2025 at 10:04:16AM +0200, Christoph Hellwig wrote:
> In preparation for changing the filemap_fdatawrite_wbc API to not expose
> the writeback_control to the callers, push the wbc declaration next to
> the filemap_fdatawrite_wbc call and just pass the nr_to_write value to
> start_delalloc_inodes.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> Reviewed-by: Damien Le Moal <dlemoal@kernel.org>
> Reviewed-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>

Acked-by: David Sterba <dsterba@suse.com>


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
