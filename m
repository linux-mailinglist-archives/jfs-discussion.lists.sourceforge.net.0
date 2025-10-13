Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FF69BD2CA4
	for <lists+jfs-discussion@lfdr.de>; Mon, 13 Oct 2025 13:33:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rMDbnH6nh7ErqC63W4QhRgCuM91bIWN1mvKJx5J6cik=; b=N6lSoOT+S0ppehi6chkcthsIqh
	B7VARWMf3PpyH2HQ6DN14dWeupWHK9X6h3EuH5kaBveKrHtSJHQAkmIBUdr7hBInzFCmM88L6axlr
	Jtj/zPuskhWhHNTKPqhEAolPOJceF/yLVCz4H0w7SyIEyvgGt7aybv8zbMbFna91/w64=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1v8Gnd-0000z0-Gn;
	Mon, 13 Oct 2025 11:33:09 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jack@suse.cz>) id 1v8Gnc-0000yt-Qd
 for jfs-discussion@lists.sourceforge.net;
 Mon, 13 Oct 2025 11:33:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FjA3pivDdgLh9qrZtx0E12mcR60zwdtloy+2zU3PjFA=; b=VMnXMpHVuYMe1HKocDLgTGIfEu
 BBp+c0dc/eaeIwA8yDi8eH0+ZoKdfupjCidFs/PNQWX8+yyjBpTwiPX9C13tjdmo7Q9d3KQQA+XAu
 KX/YnxzmGIKzV73bdvsyYJRK/+gNL/huNasD0Dcs2f7WwRpM1z2ip9I86TID+N347PwU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=FjA3pivDdgLh9qrZtx0E12mcR60zwdtloy+2zU3PjFA=; b=KmAsJwelj4yT/JJK2smbQw/O4T
 kUXjLU1rlfTXcpFq16Z29laS+ggblj4ThrDB/r3Xnj/cIdwQR40PmoFAwqsIjR/z2LGBcqZug4R1j
 4VKBSpUfHXP0LQpiOt2IqMNDj2TvTWOpUszvmJKJazTTJ0txh63dLSFD8LwBuQ5qkRH8=;
Received: from smtp-out2.suse.de ([195.135.223.131])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1v8Gnc-00082g-8A for jfs-discussion@lists.sourceforge.net;
 Mon, 13 Oct 2025 11:33:08 +0000
Received: from imap1.dmz-prg2.suse.org (imap1.dmz-prg2.suse.org
 [IPv6:2a07:de40:b281:104:10:150:64:97])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-out2.suse.de (Postfix) with ESMTPS id B3DC61F385;
 Mon, 13 Oct 2025 11:33:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1760355181; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=FjA3pivDdgLh9qrZtx0E12mcR60zwdtloy+2zU3PjFA=;
 b=oeF8rY9Q/Uvu8apVgpQdJlOswy7dt6UocwzUR/f+RTfPqKYiFHdKQrp+6FmfQF9c6U3/0B
 pICPq7nBPvsZNxODAgH7yZi++Fj49s8yj4UnoeOpx6L4YdqIaIjf5Mhphg7fVPhaDBej8p
 guZHc4SNPIId/TkGmVg3FZLrGrLcVAQ=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1760355181;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=FjA3pivDdgLh9qrZtx0E12mcR60zwdtloy+2zU3PjFA=;
 b=IpA0k+fj4k/tvd6VNkefE1txs1XtfoHuTIEMXxBUf7MHAXbZy0tcwybjvJrMId+YC1NFQP
 t3pkXSodL9ywF8DQ==
Authentication-Results: smtp-out2.suse.de;
 dkim=pass header.d=suse.cz header.s=susede2_rsa header.b=oeF8rY9Q;
 dkim=pass header.d=suse.cz header.s=susede2_ed25519 header.b=IpA0k+fj
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1760355181; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=FjA3pivDdgLh9qrZtx0E12mcR60zwdtloy+2zU3PjFA=;
 b=oeF8rY9Q/Uvu8apVgpQdJlOswy7dt6UocwzUR/f+RTfPqKYiFHdKQrp+6FmfQF9c6U3/0B
 pICPq7nBPvsZNxODAgH7yZi++Fj49s8yj4UnoeOpx6L4YdqIaIjf5Mhphg7fVPhaDBej8p
 guZHc4SNPIId/TkGmVg3FZLrGrLcVAQ=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1760355181;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=FjA3pivDdgLh9qrZtx0E12mcR60zwdtloy+2zU3PjFA=;
 b=IpA0k+fj4k/tvd6VNkefE1txs1XtfoHuTIEMXxBUf7MHAXbZy0tcwybjvJrMId+YC1NFQP
 t3pkXSodL9ywF8DQ==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id A546C1374A;
 Mon, 13 Oct 2025 11:33:01 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
 by imap1.dmz-prg2.suse.org with ESMTPSA id yvhYKG3j7GjRZwAAD6G6ig
 (envelope-from <jack@suse.cz>); Mon, 13 Oct 2025 11:33:01 +0000
Received: by quack3.suse.cz (Postfix, from userid 1000)
 id 5C0D0A0A58; Mon, 13 Oct 2025 13:33:01 +0200 (CEST)
Date: Mon, 13 Oct 2025 13:33:01 +0200
From: Jan Kara <jack@suse.cz>
To: Christoph Hellwig <hch@lst.de>
Message-ID: <5k34nbj3dej7ffoh3ihcqzaaamb43lfef3dyptwlhflzcu6nwq@pnkdrqdiwyx6>
References: <20251013025808.4111128-1-hch@lst.de>
 <20251013025808.4111128-3-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251013025808.4111128-3-hch@lst.de>
X-Rspamd-Queue-Id: B3DC61F385
X-Rspamd-Server: rspamd2.dmz-prg2.suse.org
X-Spamd-Result: default: False [-4.01 / 50.00]; BAYES_HAM(-3.00)[100.00%];
 NEURAL_HAM_LONG(-1.00)[-1.000]; MID_RHS_NOT_FQDN(0.50)[];
 R_DKIM_ALLOW(-0.20)[suse.cz:s=susede2_rsa,suse.cz:s=susede2_ed25519];
 NEURAL_HAM_SHORT(-0.20)[-1.000]; MIME_GOOD(-0.10)[text/plain];
 MX_GOOD(-0.01)[]; MIME_TRACE(0.00)[0:+];
 RCVD_VIA_SMTP_AUTH(0.00)[];
 FUZZY_RATELIMITED(0.00)[rspamd.com]; TO_DN_SOME(0.00)[];
 RCPT_COUNT_TWELVE(0.00)[24]; ARC_NA(0.00)[];
 MISSING_XM_UA(0.00)[];
 DBL_BLOCKED_OPENRESOLVER(0.00)[lst.de:email,suse.cz:email,suse.cz:dkim,suse.com:email,imap1.dmz-prg2.suse.org:helo,imap1.dmz-prg2.suse.org:rdns];
 RBL_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[2a07:de40:b281:104:10:150:64:97:from]; 
 FROM_EQ_ENVFROM(0.00)[]; FROM_HAS_DN(0.00)[];
 RCVD_COUNT_THREE(0.00)[3];
 SPAMHAUS_XBL(0.00)[2a07:de40:b281:104:10:150:64:97:from];
 RCVD_TLS_LAST(0.00)[]; TO_MATCH_ENVRCPT_ALL(0.00)[];
 DKIM_SIGNED(0.00)[suse.cz:s=susede2_rsa,suse.cz:s=susede2_ed25519];
 DKIM_TRACE(0.00)[suse.cz:+]
X-Rspamd-Action: no action
X-Spam-Flag: NO
X-Spam-Score: -4.01
X-Spam-Level: 
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon 13-10-25 11:57:57,
 Christoph Hellwig wrote: > Use filemap_fdatawrite_range
 instead of opencoding the logic using > filemap_fdatawrite_wbc. > >
 Signed-off-by:
 Christoph Hellwig <hch@lst.de> Looks good. Feel free to add: 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1v8Gnc-00082g-8A
Subject: Re: [Jfs-discussion] [PATCH 02/10] 9p: don't opencode
 filemap_fdatawrite_range in v9fs_mmap_vm_close
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

On Mon 13-10-25 11:57:57, Christoph Hellwig wrote:
> Use filemap_fdatawrite_range instead of opencoding the logic using
> filemap_fdatawrite_wbc.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>

Looks good. Feel free to add:

Reviewed-by: Jan Kara <jack@suse.cz>

								Honza

> ---
>  fs/9p/vfs_file.c | 17 ++++-------------
>  1 file changed, 4 insertions(+), 13 deletions(-)
> 
> diff --git a/fs/9p/vfs_file.c b/fs/9p/vfs_file.c
> index eb0b083da269..612a230bc012 100644
> --- a/fs/9p/vfs_file.c
> +++ b/fs/9p/vfs_file.c
> @@ -483,24 +483,15 @@ v9fs_vm_page_mkwrite(struct vm_fault *vmf)
>  
>  static void v9fs_mmap_vm_close(struct vm_area_struct *vma)
>  {
> -	struct inode *inode;
> -
> -	struct writeback_control wbc = {
> -		.nr_to_write = LONG_MAX,
> -		.sync_mode = WB_SYNC_ALL,
> -		.range_start = (loff_t)vma->vm_pgoff * PAGE_SIZE,
> -		 /* absolute end, byte at end included */
> -		.range_end = (loff_t)vma->vm_pgoff * PAGE_SIZE +
> -			(vma->vm_end - vma->vm_start - 1),
> -	};
> -
>  	if (!(vma->vm_flags & VM_SHARED))
>  		return;
>  
>  	p9_debug(P9_DEBUG_VFS, "9p VMA close, %p, flushing", vma);
>  
> -	inode = file_inode(vma->vm_file);
> -	filemap_fdatawrite_wbc(inode->i_mapping, &wbc);
> +	filemap_fdatawrite_range(file_inode(vma->vm_file)->i_mapping,
> +			(loff_t)vma->vm_pgoff * PAGE_SIZE,
> +			(loff_t)vma->vm_pgoff * PAGE_SIZE +
> +				(vma->vm_end - vma->vm_start - 1));
>  }
>  
>  static const struct vm_operations_struct v9fs_mmap_file_vm_ops = {
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
