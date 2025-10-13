Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 69B72BD2C92
	for <lists+jfs-discussion@lfdr.de>; Mon, 13 Oct 2025 13:32:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6SAvezoD+lJUiLq7K/v4k9npNNOZEW66+pbezhoxsd4=; b=V976m6pIivKaPFze/5oqQ5Cp2x
	QI0wkMP/wlAQLHuKgJriKtgNhyNog7Y8iaZTcbg4RGp768wVLINTw1ckUD5/c+k6d82gGruwWP7Pq
	CLsy7vRHaINC+8zpZKUg6lVBII5Uu9pp7I6XZLWXH7tmUikklg2wkiF2KcwoOR1zUlS0=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1v8Gmy-0007i7-3l;
	Mon, 13 Oct 2025 11:32:28 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jack@suse.cz>) id 1v8Gmv-0007i0-QO
 for jfs-discussion@lists.sourceforge.net;
 Mon, 13 Oct 2025 11:32:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OJD2D5sOD1UwFVRnLiisA06ok66jFshkpFT7U5auYaU=; b=C/PSBoCVG8wBL1wlIFjZImPtjy
 AebxUxXd7SiCUyrMxcD7LPNqcjsKt9mKsi+w1VvC5qjg4o6cdNCoKp3+evqNAzprkf56AP6zXWE8P
 mhpXKMm8Juhop5hjTAqgIw7h/Yvpj7IA8MyeLs8CKt/eIsQVp/WIudUixKDyEnIwF7Uo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=OJD2D5sOD1UwFVRnLiisA06ok66jFshkpFT7U5auYaU=; b=jHXX7TziCEmc+8if09Ck8gQe8t
 t1zGzcLAXPCQ1BROrjMhWsLNuPVPxEi8XvHUiETwb0cnNdfajPAp3FBWpX9IoFtsFwBdPlsHE6nye
 m5sTrZrpqA9FaSmpgPNVlgvHJKRMPIrRYpDCoUylrh8JhsXtD6Lc0y9C/pMwbT6WNMsk=;
Received: from smtp-out1.suse.de ([195.135.223.130])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1v8Gmv-0007yi-R9 for jfs-discussion@lists.sourceforge.net;
 Mon, 13 Oct 2025 11:32:26 +0000
Received: from imap1.dmz-prg2.suse.org (unknown [10.150.64.97])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-out1.suse.de (Postfix) with ESMTPS id 4135121A0B;
 Mon, 13 Oct 2025 11:32:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1760355139; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=OJD2D5sOD1UwFVRnLiisA06ok66jFshkpFT7U5auYaU=;
 b=c2pY3Q60rdySkJnHio1esw2RtxdDS1I/ROgZuToYDooNtM5rlAyGD3QtN3IG5Biyk9zkDd
 okc+vn2gfnqpE+l51QceqRYB1D59POM0BcYhL7iEbOXycj1ovhLT9DyS1f8xJx6reFNUId
 CuxNanTwAusOc1HkfPI2SLlSS1FzxMY=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1760355139;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=OJD2D5sOD1UwFVRnLiisA06ok66jFshkpFT7U5auYaU=;
 b=PKyKaGFXDxUdTiiurMffn9aZFLjkmr8MgiOPS9YDScwKazJYvsQqAb+UV2lM1fMEPkFYXF
 1HdhYBXBMD1JZjAw==
Authentication-Results: smtp-out1.suse.de;
	none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1760355139; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=OJD2D5sOD1UwFVRnLiisA06ok66jFshkpFT7U5auYaU=;
 b=c2pY3Q60rdySkJnHio1esw2RtxdDS1I/ROgZuToYDooNtM5rlAyGD3QtN3IG5Biyk9zkDd
 okc+vn2gfnqpE+l51QceqRYB1D59POM0BcYhL7iEbOXycj1ovhLT9DyS1f8xJx6reFNUId
 CuxNanTwAusOc1HkfPI2SLlSS1FzxMY=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1760355139;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=OJD2D5sOD1UwFVRnLiisA06ok66jFshkpFT7U5auYaU=;
 b=PKyKaGFXDxUdTiiurMffn9aZFLjkmr8MgiOPS9YDScwKazJYvsQqAb+UV2lM1fMEPkFYXF
 1HdhYBXBMD1JZjAw==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id 327D61374A;
 Mon, 13 Oct 2025 11:32:19 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
 by imap1.dmz-prg2.suse.org with ESMTPSA id C3H+C0Pj7GgJZwAAD6G6ig
 (envelope-from <jack@suse.cz>); Mon, 13 Oct 2025 11:32:19 +0000
Received: by quack3.suse.cz (Postfix, from userid 1000)
 id CD496A0A58; Mon, 13 Oct 2025 13:32:03 +0200 (CEST)
Date: Mon, 13 Oct 2025 13:32:03 +0200
From: Jan Kara <jack@suse.cz>
To: Christoph Hellwig <hch@lst.de>
Message-ID: <wxziorjgzpc5nlktnl53ctsroriqvwjkuvwsgznl63oeid4cvp@p7mkzimdgltg>
References: <20251013025808.4111128-1-hch@lst.de>
 <20251013025808.4111128-2-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251013025808.4111128-2-hch@lst.de>
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
 DBL_BLOCKED_OPENRESOLVER(0.00)[suse.com:email,imap1.dmz-prg2.suse.org:helo]
X-Spam-Flag: NO
X-Spam-Score: -3.80
X-Spam-Level: 
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon 13-10-25 11:57:56,
 Christoph Hellwig wrote: > Use filemap_fdatawrite_range
 instead of opencoding the logic using > filemap_fdatawrite_wbc. > >
 Signed-off-by:
 Christoph Hellwig <hch@lst.de> Looks good. Feel free to add: 
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
X-Headers-End: 1v8Gmv-0007yi-R9
Subject: Re: [Jfs-discussion] [PATCH 01/10] mm: don't opencode
 filemap_fdatawrite_range in filemap_invalidate_inode
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

On Mon 13-10-25 11:57:56, Christoph Hellwig wrote:
> Use filemap_fdatawrite_range instead of opencoding the logic using
> filemap_fdatawrite_wbc.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>

Looks good. Feel free to add:

Reviewed-by: Jan Kara <jack@suse.cz>

								Honza

> ---
>  mm/filemap.c | 12 ++----------
>  1 file changed, 2 insertions(+), 10 deletions(-)
> 
> diff --git a/mm/filemap.c b/mm/filemap.c
> index 13f0259d993c..99d6919af60d 100644
> --- a/mm/filemap.c
> +++ b/mm/filemap.c
> @@ -4457,16 +4457,8 @@ int filemap_invalidate_inode(struct inode *inode, bool flush,
>  	unmap_mapping_pages(mapping, first, nr, false);
>  
>  	/* Write back the data if we're asked to. */
> -	if (flush) {
> -		struct writeback_control wbc = {
> -			.sync_mode	= WB_SYNC_ALL,
> -			.nr_to_write	= LONG_MAX,
> -			.range_start	= start,
> -			.range_end	= end,
> -		};
> -
> -		filemap_fdatawrite_wbc(mapping, &wbc);
> -	}
> +	if (flush)
> +		filemap_fdatawrite_range(mapping, start, end);
>  
>  	/* Wait for writeback to complete on all folios and discard. */
>  	invalidate_inode_pages2_range(mapping, start / PAGE_SIZE, end / PAGE_SIZE);
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
