Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 58041C06F7E
	for <lists+jfs-discussion@lfdr.de>; Fri, 24 Oct 2025 17:28:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yXFRHCSeBTxprL96I56XPIbP3VsBKNeIftNdv62YX9U=; b=jfThlj4gmPYcc5/9P8PSmXEbqh
	490rdE25G4R8IiUKWMn7NVPmeda2TFSIo56CeoFASiVk0N0dqsPcnJ/2gXDMJZpScERkJaIJt570z
	TlLiX9lkYvNe4QvOVXqYb5HhrIfinzkNrheBu8MgPnBiqMf5iI/PRjFXPs9NXOO6UG1I=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vCJiC-0001bN-1z;
	Fri, 24 Oct 2025 15:28:16 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jack@suse.cz>) id 1vCJiA-0001bH-GQ
 for jfs-discussion@lists.sourceforge.net;
 Fri, 24 Oct 2025 15:28:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=AkVO73khQEXexPsxQT0RVGnJrziAwGHpdDpx2ltyfZ0=; b=SUY/JoAfc2CWXUnro1h/mbbZvX
 THcuod2DBv4VL3iZFC0oTO84a8F/AaYf2D2Id4MRRuSbu/mqL9ZwoLbfNrGskwm77xnSsebKwp4K6
 Jqqo5c70TM7Kv4RUiac3hy5L1S63x2AzEAi+cjFE6lT6RLz8IMLq2dflW2VofnD9aaAo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=AkVO73khQEXexPsxQT0RVGnJrziAwGHpdDpx2ltyfZ0=; b=GL41Da9cRc749z8xC/V4OfoTNN
 sDDZtjg7rldK2WiWIpK/J4cphxZalYRnyG+JlvJoHs1yH1mochHPRDBcgZK9uO0YQxEZHh1c+ocPf
 jTNW7ZxGDcBeLotwkACzmYxKLtAQYvSS45hpyrDTfzNlUGna+ud1SfA8t4ntds1FelyQ=;
Received: from smtp-out1.suse.de ([195.135.223.130])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vCJi9-0006d3-O4 for jfs-discussion@lists.sourceforge.net;
 Fri, 24 Oct 2025 15:28:14 +0000
Received: from imap1.dmz-prg2.suse.org (unknown [10.150.64.97])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-out1.suse.de (Postfix) with ESMTPS id 46D6C2120A;
 Fri, 24 Oct 2025 12:13:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1761308000; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=AkVO73khQEXexPsxQT0RVGnJrziAwGHpdDpx2ltyfZ0=;
 b=CjojHoYqaGMzfr5XqNusQqu1GyDxPy0hnR6Ldj+jMf2eYrTAdI2alMTnKoUSmrXoHvFzyY
 UToaifYK+aQl8TtK32yOMGz7StJr1kY/XFCLmL8yl3rGsIxvYxpuaYXr9RvWQe45kcVwON
 5/tuFmNtP0/OwY0IBwV80drSEDaabHk=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1761308000;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=AkVO73khQEXexPsxQT0RVGnJrziAwGHpdDpx2ltyfZ0=;
 b=1acUFfy3hGwnqk5XZUYklOyZE7Yzi46EVBZ/g+PJSSiLxPnydp7ewriPn0sf5iaWyR9gF9
 M2aK7AndCIkzA5Cg==
Authentication-Results: smtp-out1.suse.de;
	none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1761308000; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=AkVO73khQEXexPsxQT0RVGnJrziAwGHpdDpx2ltyfZ0=;
 b=CjojHoYqaGMzfr5XqNusQqu1GyDxPy0hnR6Ldj+jMf2eYrTAdI2alMTnKoUSmrXoHvFzyY
 UToaifYK+aQl8TtK32yOMGz7StJr1kY/XFCLmL8yl3rGsIxvYxpuaYXr9RvWQe45kcVwON
 5/tuFmNtP0/OwY0IBwV80drSEDaabHk=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1761308000;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=AkVO73khQEXexPsxQT0RVGnJrziAwGHpdDpx2ltyfZ0=;
 b=1acUFfy3hGwnqk5XZUYklOyZE7Yzi46EVBZ/g+PJSSiLxPnydp7ewriPn0sf5iaWyR9gF9
 M2aK7AndCIkzA5Cg==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id 301D713693;
 Fri, 24 Oct 2025 12:13:20 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
 by imap1.dmz-prg2.suse.org with ESMTPSA id Mwu+C2Bt+2jXOQAAD6G6ig
 (envelope-from <jack@suse.cz>); Fri, 24 Oct 2025 12:13:20 +0000
Received: by quack3.suse.cz (Postfix, from userid 1000)
 id 3BF23A28AB; Fri, 24 Oct 2025 14:13:19 +0200 (CEST)
Date: Fri, 24 Oct 2025 14:13:19 +0200
From: Jan Kara <jack@suse.cz>
To: Christoph Hellwig <hch@lst.de>
Message-ID: <yybiur2jmv6s4n2sjlubwimmfbsrb3gx6tk67ki23jnqncaeba@wayirnpbaum3>
References: <20251024080431.324236-1-hch@lst.de>
 <20251024080431.324236-11-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251024080431.324236-11-hch@lst.de>
X-Spamd-Result: default: False [-3.80 / 50.00]; BAYES_HAM(-3.00)[100.00%];
 NEURAL_HAM_LONG(-1.00)[-1.000]; MID_RHS_NOT_FQDN(0.50)[];
 NEURAL_HAM_SHORT(-0.20)[-1.000]; MIME_GOOD(-0.10)[text/plain];
 RCVD_COUNT_THREE(0.00)[3]; FUZZY_RATELIMITED(0.00)[rspamd.com];
 FROM_HAS_DN(0.00)[]; ARC_NA(0.00)[];
 RCPT_COUNT_TWELVE(0.00)[24]; MIME_TRACE(0.00)[0:+];
 DKIM_SIGNED(0.00)[suse.cz:s=susede2_rsa,suse.cz:s=susede2_ed25519];
 RCVD_TLS_LAST(0.00)[]; TO_MATCH_ENVRCPT_ALL(0.00)[];
 FROM_EQ_ENVFROM(0.00)[]; TO_DN_SOME(0.00)[];
 RCVD_VIA_SMTP_AUTH(0.00)[]; MISSING_XM_UA(0.00)[];
 DBL_BLOCKED_OPENRESOLVER(0.00)[suse.com:email,imap1.dmz-prg2.suse.org:helo]
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
 Content preview:  On Fri 24-10-25 10:04:21, Christoph Hellwig wrote: > Rename
 filemap_fdatawrite_range_kick to filemap_flush_range because it > is the
 ranged version of filemap_flush. > > Signed-off-by: Christoph Hellw [...] 
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
X-Headers-End: 1vCJi9-0006d3-O4
Subject: Re: [Jfs-discussion] [PATCH 10/10] mm: rename
 filemap_fdatawrite_range_kick to filemap_flush_range
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

On Fri 24-10-25 10:04:21, Christoph Hellwig wrote:
> Rename filemap_fdatawrite_range_kick to filemap_flush_range because it
> is the ranged version of filemap_flush.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>

Looks good. Feel free to add:

Reviewed-by: Jan Kara <jack@suse.cz>

								Honza

> ---
>  fs/sync.c          | 3 +--
>  include/linux/fs.h | 6 +++---
>  mm/fadvise.c       | 2 +-
>  mm/filemap.c       | 8 ++++----
>  4 files changed, 9 insertions(+), 10 deletions(-)
> 
> diff --git a/fs/sync.c b/fs/sync.c
> index 6d8b04e04c3c..1759f6ba36cd 100644
> --- a/fs/sync.c
> +++ b/fs/sync.c
> @@ -285,8 +285,7 @@ int sync_file_range(struct file *file, loff_t offset, loff_t nbytes,
>  			ret = filemap_fdatawrite_range(mapping, offset,
>  					endbyte);
>  		else
> -			ret = filemap_fdatawrite_range_kick(mapping, offset,
> -					endbyte);
> +			ret = filemap_flush_range(mapping, offset, endbyte);
>  		if (ret < 0)
>  			goto out;
>  	}
> diff --git a/include/linux/fs.h b/include/linux/fs.h
> index c895146c1444..a5dbfa20f8d7 100644
> --- a/include/linux/fs.h
> +++ b/include/linux/fs.h
> @@ -3014,7 +3014,7 @@ extern int __must_check file_fdatawait_range(struct file *file, loff_t lstart,
>  extern int __must_check file_check_and_advance_wb_err(struct file *file);
>  extern int __must_check file_write_and_wait_range(struct file *file,
>  						loff_t start, loff_t end);
> -int filemap_fdatawrite_range_kick(struct address_space *mapping, loff_t start,
> +int filemap_flush_range(struct address_space *mapping, loff_t start,
>  		loff_t end);
>  
>  static inline int file_write_and_wait(struct file *file)
> @@ -3051,8 +3051,8 @@ static inline ssize_t generic_write_sync(struct kiocb *iocb, ssize_t count)
>  	} else if (iocb->ki_flags & IOCB_DONTCACHE) {
>  		struct address_space *mapping = iocb->ki_filp->f_mapping;
>  
> -		filemap_fdatawrite_range_kick(mapping, iocb->ki_pos - count,
> -					      iocb->ki_pos - 1);
> +		filemap_flush_range(mapping, iocb->ki_pos - count,
> +				iocb->ki_pos - 1);
>  	}
>  
>  	return count;
> diff --git a/mm/fadvise.c b/mm/fadvise.c
> index f1be619f0e58..67028e30aa91 100644
> --- a/mm/fadvise.c
> +++ b/mm/fadvise.c
> @@ -111,7 +111,7 @@ int generic_fadvise(struct file *file, loff_t offset, loff_t len, int advice)
>  		spin_unlock(&file->f_lock);
>  		break;
>  	case POSIX_FADV_DONTNEED:
> -		filemap_fdatawrite_range_kick(mapping, offset, endbyte);
> +		filemap_flush_range(mapping, offset, endbyte);
>  
>  		/*
>  		 * First and last FULL page! Partial pages are deliberately
> diff --git a/mm/filemap.c b/mm/filemap.c
> index f90f5bb2b825..fa770768ea3a 100644
> --- a/mm/filemap.c
> +++ b/mm/filemap.c
> @@ -419,7 +419,7 @@ int filemap_fdatawrite(struct address_space *mapping)
>  EXPORT_SYMBOL(filemap_fdatawrite);
>  
>  /**
> - * filemap_fdatawrite_range_kick - start writeback on a range
> + * filemap_flush_range - start writeback on a range
>   * @mapping:	target address_space
>   * @start:	index to start writeback on
>   * @end:	last (inclusive) index for writeback
> @@ -429,12 +429,12 @@ EXPORT_SYMBOL(filemap_fdatawrite);
>   *
>   * Return: %0 on success, negative error code otherwise.
>   */
> -int filemap_fdatawrite_range_kick(struct address_space *mapping, loff_t start,
> +int filemap_flush_range(struct address_space *mapping, loff_t start,
>  				  loff_t end)
>  {
>  	return filemap_writeback(mapping, start, end, WB_SYNC_NONE, NULL);
>  }
> -EXPORT_SYMBOL_GPL(filemap_fdatawrite_range_kick);
> +EXPORT_SYMBOL_GPL(filemap_flush_range);
>  
>  /**
>   * filemap_flush - mostly a non-blocking flush
> @@ -447,7 +447,7 @@ EXPORT_SYMBOL_GPL(filemap_fdatawrite_range_kick);
>   */
>  int filemap_flush(struct address_space *mapping)
>  {
> -	return filemap_fdatawrite_range_kick(mapping, 0, LLONG_MAX);
> +	return filemap_flush_range(mapping, 0, LLONG_MAX);
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
