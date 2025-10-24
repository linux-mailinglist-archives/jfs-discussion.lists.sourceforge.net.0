Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E15AC06F51
	for <lists+jfs-discussion@lfdr.de>; Fri, 24 Oct 2025 17:26:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HotOG44oeu4ifAdaVj2fW/F5yZ7sK+SfyEl5iJ01+gw=; b=Dvdnl3UQVyOW3RnQ6+kTIEhogM
	BDcJ9n0aCXL2pU9UR/Sczs1ggecj71oXMkTO2+K7lElO1fy4sKQyE6IjvC7kD4LW+4bCx8VRIjFh2
	gXkDz1o9T4F2LZeOBhf1imLtkCNShc8pPot7TUxiDz9qIPDcrxV83HVqKsp2t7exfUWk=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vCJgJ-0008IZ-8j;
	Fri, 24 Oct 2025 15:26:20 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jack@suse.cz>) id 1vCJgI-0008IR-Fc
 for jfs-discussion@lists.sourceforge.net;
 Fri, 24 Oct 2025 15:26:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NenQ2Wom+07dIl2jW8BeU68cV0chgqY+KBmPwDVWLbw=; b=L2jHWeZecQzYAyAPUJBDnu/9dg
 j2hAMOKTJS3I3zi/PpjODOQdyWP6X4q6Q1a9NqtXHa4h5HoH/GMkfLDqfBamrElv+RoTJ80EuuHjH
 6rU4DUr86q6d4UXu4W62++koKc4AVTCmg1fgkHqWSQhdoSIV/RYktKvdXTzJ7fZQZpfg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=NenQ2Wom+07dIl2jW8BeU68cV0chgqY+KBmPwDVWLbw=; b=Kmrtfa4XnIiTXVi3nJBXoe32KZ
 xBBC7BrSNID4gkEGpZDN5qcJ6reDjgtDOvbNub5aHZOhtgTeUdk04jsHf8UupBXRF/YYnJ5Ytjfec
 Wayhu2l0eZkt/4BJTjDMp7o6VR+KFnnh7V4o6bLplA7iHPkQGi+AwTc6vxGvzufRJbDE=;
Received: from smtp-out2.suse.de ([195.135.223.131])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vCJgI-0006YM-Mr for jfs-discussion@lists.sourceforge.net;
 Fri, 24 Oct 2025 15:26:19 +0000
Received: from imap1.dmz-prg2.suse.org (unknown [10.150.64.97])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-out2.suse.de (Postfix) with ESMTPS id 47B581F38D;
 Fri, 24 Oct 2025 12:11:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1761307872; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=NenQ2Wom+07dIl2jW8BeU68cV0chgqY+KBmPwDVWLbw=;
 b=gw12pWJ4dBervOkm4c1wdpprEpUqlQeWPArxYlUpX+1wjQaYgBlWw9o1llMEE7NqtHZ00v
 Xwu5paU0pUZgqU7j4Y44qNPMavuA+1pvb4L6prQKH89bIn60BpNivnCVRYVnb+NV/td2lB
 +uPdROXqPLp7tKETWM5DKokgMabTyEE=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1761307872;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=NenQ2Wom+07dIl2jW8BeU68cV0chgqY+KBmPwDVWLbw=;
 b=b2hgw/mRbq2JF7vAhHufNUG/FiOVZulsx+5sZnxygRLE3d2wabKfCkXCLqn+k97//SK6wt
 jbZRwwG/DEKPw0Aw==
Authentication-Results: smtp-out2.suse.de;
	none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1761307872; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=NenQ2Wom+07dIl2jW8BeU68cV0chgqY+KBmPwDVWLbw=;
 b=gw12pWJ4dBervOkm4c1wdpprEpUqlQeWPArxYlUpX+1wjQaYgBlWw9o1llMEE7NqtHZ00v
 Xwu5paU0pUZgqU7j4Y44qNPMavuA+1pvb4L6prQKH89bIn60BpNivnCVRYVnb+NV/td2lB
 +uPdROXqPLp7tKETWM5DKokgMabTyEE=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1761307872;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=NenQ2Wom+07dIl2jW8BeU68cV0chgqY+KBmPwDVWLbw=;
 b=b2hgw/mRbq2JF7vAhHufNUG/FiOVZulsx+5sZnxygRLE3d2wabKfCkXCLqn+k97//SK6wt
 jbZRwwG/DEKPw0Aw==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id 207C413693;
 Fri, 24 Oct 2025 12:11:12 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
 by imap1.dmz-prg2.suse.org with ESMTPSA id S0znB+Bs+2iwNwAAD6G6ig
 (envelope-from <jack@suse.cz>); Fri, 24 Oct 2025 12:11:12 +0000
Received: by quack3.suse.cz (Postfix, from userid 1000)
 id 7DA6CA28AB; Fri, 24 Oct 2025 14:11:07 +0200 (CEST)
Date: Fri, 24 Oct 2025 14:11:07 +0200
From: Jan Kara <jack@suse.cz>
To: Christoph Hellwig <hch@lst.de>
Message-ID: <kxl45u4l5u6vrecxj4ib7uxmptv6x6heksachfymh3ffu7xl3d@bza4durxfmhp>
References: <20251024080431.324236-1-hch@lst.de>
 <20251024080431.324236-8-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251024080431.324236-8-hch@lst.de>
X-Spamd-Result: default: False [-3.80 / 50.00]; BAYES_HAM(-3.00)[100.00%];
 NEURAL_HAM_LONG(-1.00)[-1.000]; MID_RHS_NOT_FQDN(0.50)[];
 NEURAL_HAM_SHORT(-0.20)[-1.000]; MIME_GOOD(-0.10)[text/plain];
 RCVD_COUNT_THREE(0.00)[3]; FUZZY_RATELIMITED(0.00)[rspamd.com];
 FROM_HAS_DN(0.00)[]; ARC_NA(0.00)[];
 RCPT_COUNT_TWELVE(0.00)[25]; MIME_TRACE(0.00)[0:+];
 DKIM_SIGNED(0.00)[suse.cz:s=susede2_rsa,suse.cz:s=susede2_ed25519];
 RCVD_TLS_LAST(0.00)[]; TO_MATCH_ENVRCPT_ALL(0.00)[];
 FROM_EQ_ENVFROM(0.00)[]; TO_DN_SOME(0.00)[];
 RCVD_VIA_SMTP_AUTH(0.00)[]; MISSING_XM_UA(0.00)[];
 DBL_BLOCKED_OPENRESOLVER(0.00)[imap1.dmz-prg2.suse.org:helo,suse.com:email]
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
 Content preview:  On Fri 24-10-25 10:04:18,
 Christoph Hellwig wrote: > And rewrite
 filemap_fdatawrite to use filemap_fdatawrite_range instead > to have a simpler
 call chain. > > Signed-off-by: Christoph Hellwig <hch@ls [...] 
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
X-Headers-End: 1vCJgI-0006YM-Mr
Subject: Re: [Jfs-discussion] [PATCH 07/10] mm: remove __filemap_fdatawrite
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
 Johannes Thumshirn <johannes.thumshirn@wdc.com>, v9fs@lists.linux.dev,
 linux-xfs@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 linux-btrfs@vger.kernel.org, Alexander Viro <viro@zeniv.linux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Fri 24-10-25 10:04:18, Christoph Hellwig wrote:
> And rewrite filemap_fdatawrite to use filemap_fdatawrite_range instead
> to have a simpler call chain.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> Reviewed-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>

Looks good. Feel free to add:

Reviewed-by: Jan Kara <jack@suse.cz>

								Honza

> ---
>  mm/filemap.c | 18 ++++++------------
>  1 file changed, 6 insertions(+), 12 deletions(-)
> 
> diff --git a/mm/filemap.c b/mm/filemap.c
> index e344b79a012d..3d4c4a96c586 100644
> --- a/mm/filemap.c
> +++ b/mm/filemap.c
> @@ -422,25 +422,19 @@ int __filemap_fdatawrite_range(struct address_space *mapping, loff_t start,
>  	return filemap_fdatawrite_wbc(mapping, &wbc);
>  }
>  
> -static inline int __filemap_fdatawrite(struct address_space *mapping,
> -	int sync_mode)
> +int filemap_fdatawrite_range(struct address_space *mapping, loff_t start,
> +		loff_t end)
>  {
> -	return __filemap_fdatawrite_range(mapping, 0, LLONG_MAX, sync_mode);
> +	return __filemap_fdatawrite_range(mapping, start, end, WB_SYNC_ALL);
>  }
> +EXPORT_SYMBOL(filemap_fdatawrite_range);
>  
>  int filemap_fdatawrite(struct address_space *mapping)
>  {
> -	return __filemap_fdatawrite(mapping, WB_SYNC_ALL);
> +	return filemap_fdatawrite_range(mapping, 0, LLONG_MAX);
>  }
>  EXPORT_SYMBOL(filemap_fdatawrite);
>  
> -int filemap_fdatawrite_range(struct address_space *mapping, loff_t start,
> -				loff_t end)
> -{
> -	return __filemap_fdatawrite_range(mapping, start, end, WB_SYNC_ALL);
> -}
> -EXPORT_SYMBOL(filemap_fdatawrite_range);
> -
>  /**
>   * filemap_fdatawrite_range_kick - start writeback on a range
>   * @mapping:	target address_space
> @@ -470,7 +464,7 @@ EXPORT_SYMBOL_GPL(filemap_fdatawrite_range_kick);
>   */
>  int filemap_flush(struct address_space *mapping)
>  {
> -	return __filemap_fdatawrite(mapping, WB_SYNC_NONE);
> +	return filemap_fdatawrite_range_kick(mapping, 0, LLONG_MAX);
>  }
>  EXPORT_SYMBOL(filemap_flush);
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
