Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DF57ABD2CCB
	for <lists+jfs-discussion@lfdr.de>; Mon, 13 Oct 2025 13:35:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vMSzd97AmzVZ4+IG+iZjdltwpcuyqb24SIJoTxPe+SA=; b=aPkIpSsOq9sAluiLTv88cMz03g
	EzyLpKxjT3GqKLcDywI82ETSGOoLHdFOwKLCSUyB+b4C+U3AZIkw78/tLx4da3Ld17P1hMfjIgWby
	pMTNT9lImn0scAVaCpMXez4IfMscsX22qTmENkWT4FQH4JNFyYUQKTGu/2aUTx6XNKVQ=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1v8GpO-0007mk-RF;
	Mon, 13 Oct 2025 11:34:58 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jack@suse.cz>) id 1v8GpM-0007ma-Gi
 for jfs-discussion@lists.sourceforge.net;
 Mon, 13 Oct 2025 11:34:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZruJ2vBh/q3aJxQpIVa0GdVinSL6t74qWuGCsK+kFcE=; b=SxW7545uwYhvLdd2DMLJfuXA0y
 fftbCQ43XYZvTZjjNHjqazPZzqcqxDGd2y/En3Z9pFaqAssXH2PCCcOtD+eEfcV9rPlx89RqEcIk4
 ZcQKcBDoIc/OfhkwIDfusESAvci1VZFSNEQByQCxDjTbCjTldTWcubsDIWQWgPzQTrUo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ZruJ2vBh/q3aJxQpIVa0GdVinSL6t74qWuGCsK+kFcE=; b=a9mKSCgmG25337dVR/xZXleTKb
 ptF7v4LvP3h/OzqcHP2ERu3s0f72b6erIIf8ghrTNARBN3khkz0t84SxQtyvye4Y2Unee9mTbLFyZ
 SaQLeJGYKc1K6sNgwhrpbIyf+74xMDu7fWaMsXNVLAvyBWO5olDY2oAhk2HbCPyaopn0=;
Received: from smtp-out1.suse.de ([195.135.223.130])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1v8GpL-0008AG-Ua for jfs-discussion@lists.sourceforge.net;
 Mon, 13 Oct 2025 11:34:56 +0000
Received: from imap1.dmz-prg2.suse.org (unknown [10.150.64.97])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-out1.suse.de (Postfix) with ESMTPS id 8C39321A23;
 Mon, 13 Oct 2025 11:34:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1760355289; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=ZruJ2vBh/q3aJxQpIVa0GdVinSL6t74qWuGCsK+kFcE=;
 b=VvBNMu317BLFpyXxQhUXDUkOIY2f93s7yBDExd2dJ1Wip2HTbvnMxf2pDOtx1jG+WwGmNr
 NvkgEtj8LFuUQbg0FgsMPMO61RbFJLm5BSFIoUa1LeqiLgGucURHQ0DrD2mFIlVHY/Cqi2
 pXVFeiJmkQ6m8Mq4xjYyrTB0whJQge0=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1760355289;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=ZruJ2vBh/q3aJxQpIVa0GdVinSL6t74qWuGCsK+kFcE=;
 b=eIxwR+o+i99D6DbKhFQXkZC3sTtXrJ9ZPNH+LEnDSYsN/hrMWUAJh0H6bTqAE/+nRdMTEy
 GroDypH7K6FlH7Dw==
Authentication-Results: smtp-out1.suse.de;
	none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1760355289; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=ZruJ2vBh/q3aJxQpIVa0GdVinSL6t74qWuGCsK+kFcE=;
 b=VvBNMu317BLFpyXxQhUXDUkOIY2f93s7yBDExd2dJ1Wip2HTbvnMxf2pDOtx1jG+WwGmNr
 NvkgEtj8LFuUQbg0FgsMPMO61RbFJLm5BSFIoUa1LeqiLgGucURHQ0DrD2mFIlVHY/Cqi2
 pXVFeiJmkQ6m8Mq4xjYyrTB0whJQge0=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1760355289;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=ZruJ2vBh/q3aJxQpIVa0GdVinSL6t74qWuGCsK+kFcE=;
 b=eIxwR+o+i99D6DbKhFQXkZC3sTtXrJ9ZPNH+LEnDSYsN/hrMWUAJh0H6bTqAE/+nRdMTEy
 GroDypH7K6FlH7Dw==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id 7623C1374A;
 Mon, 13 Oct 2025 11:34:49 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
 by imap1.dmz-prg2.suse.org with ESMTPSA id FcPUHNnj7GjwaQAAD6G6ig
 (envelope-from <jack@suse.cz>); Mon, 13 Oct 2025 11:34:49 +0000
Received: by quack3.suse.cz (Postfix, from userid 1000)
 id F1018A0A58; Mon, 13 Oct 2025 13:34:48 +0200 (CEST)
Date: Mon, 13 Oct 2025 13:34:48 +0200
From: Jan Kara <jack@suse.cz>
To: Christoph Hellwig <hch@lst.de>
Message-ID: <cqprjkby6ge4vvcxmmxrdhngsbigp2mms4oqxaspai63dkuvgg@3wtgz7qgxgbt>
References: <20251013025808.4111128-1-hch@lst.de>
 <20251013025808.4111128-4-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251013025808.4111128-4-hch@lst.de>
X-Spamd-Result: default: False [-3.80 / 50.00]; BAYES_HAM(-3.00)[100.00%];
 NEURAL_HAM_LONG(-1.00)[-1.000]; MID_RHS_NOT_FQDN(0.50)[];
 NEURAL_HAM_SHORT(-0.20)[-1.000]; MIME_GOOD(-0.10)[text/plain];
 MISSING_XM_UA(0.00)[]; FROM_HAS_DN(0.00)[];
 MIME_TRACE(0.00)[0:+]; ARC_NA(0.00)[];
 RCPT_COUNT_TWELVE(0.00)[24]; RCVD_VIA_SMTP_AUTH(0.00)[];
 RCVD_COUNT_THREE(0.00)[3]; TO_DN_SOME(0.00)[];
 FROM_EQ_ENVFROM(0.00)[]; FUZZY_RATELIMITED(0.00)[rspamd.com];
 TO_MATCH_ENVRCPT_ALL(0.00)[];
 DKIM_SIGNED(0.00)[suse.cz:s=susede2_rsa,suse.cz:s=susede2_ed25519];
 RCVD_TLS_LAST(0.00)[];
 DBL_BLOCKED_OPENRESOLVER(0.00)[suse.com:email, suse.cz:email,
 imap1.dmz-prg2.suse.org:helo, lst.de:email]
X-Spam-Flag: NO
X-Spam-Score: -3.80
X-Spam-Level: 
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon 13-10-25 11:57:58,
 Christoph Hellwig wrote: > Use filemap_fdatawrite_range
 instead of opencoding the logic using > filemap_fdatawrite_wbc. There is
 a slight change in the conversion > as nr_to_ [...] 
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
X-Headers-End: 1v8GpL-0008AG-Ua
Subject: Re: [Jfs-discussion] [PATCH 03/10] ocfs2: don't opencode
 filemap_fdatawrite_range in ocfs2_journal_submit_inode_data_buffers
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

On Mon 13-10-25 11:57:58, Christoph Hellwig wrote:
> Use filemap_fdatawrite_range instead of opencoding the logic using
> filemap_fdatawrite_wbc.  There is a slight change in the conversion
> as nr_to_write is now set to LONG_MAX instead of double the number
> of the pages in the range.  LONG_MAX is the usual nr_to_write for
> WB_SYNC_ALL writeback, and the value expected by lower layers here.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>

Looks good. Feel free to add:

Reviewed-by: Jan Kara <jack@suse.cz>

								Honza

> ---
>  fs/ocfs2/journal.c | 11 ++---------
>  1 file changed, 2 insertions(+), 9 deletions(-)
> 
> diff --git a/fs/ocfs2/journal.c b/fs/ocfs2/journal.c
> index e5f58ff2175f..85239807dec7 100644
> --- a/fs/ocfs2/journal.c
> +++ b/fs/ocfs2/journal.c
> @@ -902,15 +902,8 @@ int ocfs2_journal_alloc(struct ocfs2_super *osb)
>  
>  static int ocfs2_journal_submit_inode_data_buffers(struct jbd2_inode *jinode)
>  {
> -	struct address_space *mapping = jinode->i_vfs_inode->i_mapping;
> -	struct writeback_control wbc = {
> -		.sync_mode =  WB_SYNC_ALL,
> -		.nr_to_write = mapping->nrpages * 2,
> -		.range_start = jinode->i_dirty_start,
> -		.range_end = jinode->i_dirty_end,
> -	};
> -
> -	return filemap_fdatawrite_wbc(mapping, &wbc);
> +	return filemap_fdatawrite_range(jinode->i_vfs_inode->i_mapping,
> +			jinode->i_dirty_start, jinode->i_dirty_end);
>  }
>  
>  int ocfs2_journal_init(struct ocfs2_super *osb, int *dirty)
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
