Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 63D5ABD2E2C
	for <lists+jfs-discussion@lfdr.de>; Mon, 13 Oct 2025 14:00:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MphojaJETjzECyRTSl5K8kHstBI8TALfKfh4yN1zWlM=; b=SzyOH3Q7joiiQqwa36FxBfejQE
	uHOdwFK8YvV24eY8VEFq1pH07tyEEs6BnZtJ0fAryQbTbyIz0Opol7VMxH/4xq8+z4CoIZwyT8i/+
	N5okpC/sBLPSCE/0kBnUdHKV2FPIJNe1BeAVankwR309eM8GTdDo4RA5EvMCDHDwrCug=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1v8HEB-0008Ky-29;
	Mon, 13 Oct 2025 12:00:35 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jack@suse.cz>) id 1v8HE9-0008Kr-PZ
 for jfs-discussion@lists.sourceforge.net;
 Mon, 13 Oct 2025 12:00:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+4ozAoCHFVPL2RaeOvGtQnbmZ7SwKWEtlu18MyCihJ0=; b=hCwE98c7jfgzCBiIw9zo4g6GiB
 okU+RTqzXdiDpX8Z8PJCMiLfrdusBc2qrNVAHnrLVArbpVrQpTBz36adgV2FxpKv4fEZsR+S4/3Jg
 F6mJnoAzlyNw6/NaJc1G+B6lLwgblnK4fWQ62+4eVsD/r99PF4wMbWhszb8hSA4sbCi8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+4ozAoCHFVPL2RaeOvGtQnbmZ7SwKWEtlu18MyCihJ0=; b=jlrOkXVRBIk7SK3JcIKhV0TcEw
 Ey6aactE9hnn00I8CLgUdOTEUHFvFVw/Userbw5TsVHmmKl3yJIQ053beL7Jd/tP53KIcIze6WDhN
 xTCcTyfoaci7T7MWdad3coBqwZeqO9pihulRgrjbIiVUE2JNxdWCUYMXuH97y76yAdNQ=;
Received: from smtp-out1.suse.de ([195.135.223.130])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1v8HE9-0001kL-5c for jfs-discussion@lists.sourceforge.net;
 Mon, 13 Oct 2025 12:00:34 +0000
Received: from imap1.dmz-prg2.suse.org (imap1.dmz-prg2.suse.org
 [IPv6:2a07:de40:b281:104:10:150:64:97])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-out1.suse.de (Postfix) with ESMTPS id B9FBC219BD;
 Mon, 13 Oct 2025 12:00:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1760356821; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=+4ozAoCHFVPL2RaeOvGtQnbmZ7SwKWEtlu18MyCihJ0=;
 b=o3So9e0Uth84O+PnIEh4Oun1iPQuZvVVPoCQHorbtKIwuu6mUgAwnbxgqugoKaZ+hKRSH5
 72mtDq2nhfqyGwMaACw7/a0TRsBTLgKar+wCPOoZVBdoRX1jz/WcNTz2KMAjy2i7nAYrXr
 po9DR7+9gbCBDVqbqs2APg8qOr6o1ts=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1760356821;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=+4ozAoCHFVPL2RaeOvGtQnbmZ7SwKWEtlu18MyCihJ0=;
 b=Wqt8mG8b+3z6+GM7rCsz8+6pGorvjFjHtNKSx6T1X04EmFMGoXIOJQZmbr/RpktbXZgXJY
 gv9d+SK1c1CvXfAw==
Authentication-Results: smtp-out1.suse.de;
 dkim=pass header.d=suse.cz header.s=susede2_rsa header.b=o3So9e0U;
 dkim=pass header.d=suse.cz header.s=susede2_ed25519 header.b=Wqt8mG8b
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1760356821; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=+4ozAoCHFVPL2RaeOvGtQnbmZ7SwKWEtlu18MyCihJ0=;
 b=o3So9e0Uth84O+PnIEh4Oun1iPQuZvVVPoCQHorbtKIwuu6mUgAwnbxgqugoKaZ+hKRSH5
 72mtDq2nhfqyGwMaACw7/a0TRsBTLgKar+wCPOoZVBdoRX1jz/WcNTz2KMAjy2i7nAYrXr
 po9DR7+9gbCBDVqbqs2APg8qOr6o1ts=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1760356821;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=+4ozAoCHFVPL2RaeOvGtQnbmZ7SwKWEtlu18MyCihJ0=;
 b=Wqt8mG8b+3z6+GM7rCsz8+6pGorvjFjHtNKSx6T1X04EmFMGoXIOJQZmbr/RpktbXZgXJY
 gv9d+SK1c1CvXfAw==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id A729C13874;
 Mon, 13 Oct 2025 12:00:21 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
 by imap1.dmz-prg2.suse.org with ESMTPSA id L1/OKNXp7Gj0AwAAD6G6ig
 (envelope-from <jack@suse.cz>); Mon, 13 Oct 2025 12:00:21 +0000
Received: by quack3.suse.cz (Postfix, from userid 1000)
 id 4C3FFA0A58; Mon, 13 Oct 2025 14:00:17 +0200 (CEST)
Date: Mon, 13 Oct 2025 14:00:17 +0200
From: Jan Kara <jack@suse.cz>
To: Christoph Hellwig <hch@lst.de>
Message-ID: <2iplfhsl7b6nsq7nf6fhre2udcqeujph6mfg22afssqhnvpdwd@pknnzyakfwxs>
References: <20251013025808.4111128-1-hch@lst.de>
 <20251013025808.4111128-9-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251013025808.4111128-9-hch@lst.de>
X-Spam-Level: 
X-Spam-Flag: NO
X-Rspamd-Queue-Id: B9FBC219BD
X-Rspamd-Action: no action
X-Rspamd-Server: rspamd1.dmz-prg2.suse.org
X-Spamd-Result: default: False [-4.01 / 50.00]; BAYES_HAM(-3.00)[100.00%];
 NEURAL_HAM_LONG(-1.00)[-1.000]; MID_RHS_NOT_FQDN(0.50)[];
 R_DKIM_ALLOW(-0.20)[suse.cz:s=susede2_rsa,suse.cz:s=susede2_ed25519];
 NEURAL_HAM_SHORT(-0.20)[-1.000]; MIME_GOOD(-0.10)[text/plain];
 MX_GOOD(-0.01)[]; RCVD_VIA_SMTP_AUTH(0.00)[]; ARC_NA(0.00)[];
 MISSING_XM_UA(0.00)[];
 DBL_BLOCKED_OPENRESOLVER(0.00)[lst.de:email,suse.cz:dkim,suse.cz:email,imap1.dmz-prg2.suse.org:rdns,imap1.dmz-prg2.suse.org:helo,suse.com:email];
 RCPT_COUNT_TWELVE(0.00)[24]; MIME_TRACE(0.00)[0:+];
 TO_DN_SOME(0.00)[]; FUZZY_RATELIMITED(0.00)[rspamd.com];
 DNSWL_BLOCKED(0.00)[2a07:de40:b281:106:10:150:64:167:received,2a07:de40:b281:104:10:150:64:97:from];
 R_RATELIMIT(0.00)[to_ip_from(RLs49k5m81mxp7q8diy8d4za6z)];
 FROM_EQ_ENVFROM(0.00)[]; FROM_HAS_DN(0.00)[];
 RCVD_COUNT_THREE(0.00)[3]; TO_MATCH_ENVRCPT_ALL(0.00)[];
 DKIM_SIGNED(0.00)[suse.cz:s=susede2_rsa,suse.cz:s=susede2_ed25519];
 RCVD_TLS_LAST(0.00)[]; DKIM_TRACE(0.00)[suse.cz:+]
X-Spam-Score: -4.01
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon 13-10-25 11:58:03, Christoph Hellwig wrote: > Replace
 filemap_fdatawrite_wbc, which exposes a writeback_control to the > callers
 with a __filemap_fdatawrite helper that takes all the possible > [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1v8HE9-0001kL-5c
Subject: Re: [Jfs-discussion] [PATCH 08/10] mm: remove filemap_fdatawrite_wbc
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, jfs-discussion@lists.sourceforge.net,
 Jan Kara <jack@suse.cz>, Dominique Martinet <asmadeus@codewreck.org>,
 Christian Schoenebeck <linux_oss@crudebyte.com>, linux-mm@kvack.org,
 Joseph Qi <joseph.qi@linux.alibaba.com>, Mark Fasheh <mark@fasheh.com>,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>, linux-ext4@vger.kernel.org,
 Josef Bacik <josef@toxicpanda.com>, linux-block@vger.kernel.org,
 ocfs2-devel@lists.linux.dev, Joel Becker <jlbec@evilplan.org>,
 David Sterba <dsterba@suse.com>, Eric Van Hensbergen <ericvh@kernel.org>,
 Christian Brauner <brauner@kernel.org>, Chris Mason <clm@fb.com>,
 v9fs@lists.linux.dev, linux-xfs@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 linux-btrfs@vger.kernel.org, Alexander Viro <viro@zeniv.linux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Mon 13-10-25 11:58:03, Christoph Hellwig wrote:
> Replace filemap_fdatawrite_wbc, which exposes a writeback_control to the
> callers with a __filemap_fdatawrite helper that takes all the possible
> arguments and declares the writeback_control itself.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>

Looks good. Feel free to add:

Reviewed-by: Jan Kara <jack@suse.cz>

								Honza

> ---
>  include/linux/pagemap.h |  2 --
>  mm/filemap.c            | 54 ++++++++++++++---------------------------
>  2 files changed, 18 insertions(+), 38 deletions(-)
> 
> diff --git a/include/linux/pagemap.h b/include/linux/pagemap.h
> index fc060ce2d31d..742ba1dd3990 100644
> --- a/include/linux/pagemap.h
> +++ b/include/linux/pagemap.h
> @@ -61,8 +61,6 @@ int filemap_fdatawrite_range(struct address_space *mapping,
>  		loff_t start, loff_t end);
>  int filemap_check_errors(struct address_space *mapping);
>  void __filemap_set_wb_err(struct address_space *mapping, int err);
> -int filemap_fdatawrite_wbc(struct address_space *mapping,
> -			   struct writeback_control *wbc);
>  int kiocb_write_and_wait(struct kiocb *iocb, size_t count);
>  
>  static inline int filemap_write_and_wait(struct address_space *mapping)
> diff --git a/mm/filemap.c b/mm/filemap.c
> index bbd5d5eaa661..26b692dbf091 100644
> --- a/mm/filemap.c
> +++ b/mm/filemap.c
> @@ -366,31 +366,30 @@ static int filemap_check_and_keep_errors(struct address_space *mapping)
>  	return 0;
>  }
>  
> -/**
> - * filemap_fdatawrite_wbc - start writeback on mapping dirty pages in range
> - * @mapping:	address space structure to write
> - * @wbc:	the writeback_control controlling the writeout
> - *
> - * Call writepages on the mapping using the provided wbc to control the
> - * writeout.
> - *
> - * Return: %0 on success, negative error code otherwise.
> - */
> -int filemap_fdatawrite_wbc(struct address_space *mapping,
> -			   struct writeback_control *wbc)
> +static int __filemap_fdatawrite(struct address_space *mapping, loff_t start,
> +		loff_t end, enum writeback_sync_modes sync_mode,
> +		long *nr_to_write)
>  {
> +	struct writeback_control wbc = {
> +		.sync_mode	= sync_mode,
> +		.nr_to_write	= nr_to_write ? *nr_to_write : LONG_MAX,
> +		.range_start	= start,
> +		.range_end	= end,
> +	};
>  	int ret;
>  
>  	if (!mapping_can_writeback(mapping) ||
>  	    !mapping_tagged(mapping, PAGECACHE_TAG_DIRTY))
>  		return 0;
>  
> -	wbc_attach_fdatawrite_inode(wbc, mapping->host);
> -	ret = do_writepages(mapping, wbc);
> -	wbc_detach_inode(wbc);
> +	wbc_attach_fdatawrite_inode(&wbc, mapping->host);
> +	ret = do_writepages(mapping, &wbc);
> +	wbc_detach_inode(&wbc);
> +
> +	if (!ret && nr_to_write)
> +		*nr_to_write = wbc.nr_to_write;
>  	return ret;
>  }
> -EXPORT_SYMBOL(filemap_fdatawrite_wbc);
>  
>  /**
>   * __filemap_fdatawrite_range - start writeback on mapping dirty pages in range
> @@ -412,14 +411,7 @@ EXPORT_SYMBOL(filemap_fdatawrite_wbc);
>  int __filemap_fdatawrite_range(struct address_space *mapping, loff_t start,
>  				loff_t end, int sync_mode)
>  {
> -	struct writeback_control wbc = {
> -		.sync_mode = sync_mode,
> -		.nr_to_write = LONG_MAX,
> -		.range_start = start,
> -		.range_end = end,
> -	};
> -
> -	return filemap_fdatawrite_wbc(mapping, &wbc);
> +	return __filemap_fdatawrite(mapping, start, end, sync_mode, NULL);
>  }
>  
>  int filemap_fdatawrite_range(struct address_space *mapping, loff_t start,
> @@ -475,18 +467,8 @@ EXPORT_SYMBOL(filemap_flush);
>   */
>  int filemap_fdatawrite_kick_nr(struct address_space *mapping, long *nr_to_write)
>  {
> -	struct writeback_control wbc = {
> -		.nr_to_write = *nr_to_write,
> -		.sync_mode = WB_SYNC_NONE,
> -		.range_start = 0,
> -		.range_end = LLONG_MAX,
> -	};
> -	int ret;
> -
> -	ret = filemap_fdatawrite_wbc(mapping, &wbc);
> -	if (!ret)
> -		*nr_to_write = wbc.nr_to_write;
> -	return ret;
> +	return __filemap_fdatawrite(mapping, 0, LLONG_MAX, WB_SYNC_NONE,
> +			nr_to_write);
>  }
>  EXPORT_SYMBOL_FOR_MODULES(filemap_fdatawrite_kick_nr, "btrfs");
>  
> -- 
> 2.47.3
> 
-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
