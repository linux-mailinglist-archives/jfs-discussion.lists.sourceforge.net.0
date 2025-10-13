Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DC68BBD2E0A
	for <lists+jfs-discussion@lfdr.de>; Mon, 13 Oct 2025 14:00:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=aDmiAFu1oDVjo35ssbKIIKWqn4hgJmn973SvU2l8V5U=; b=JokjgYdM6HYsH4Hqp7Wx0ea2ih
	p8xvbOBD1KMUqkYD5zNqgQ4GyQnfOrS4OQTFqepfbu9h3Tmc1/tl7aKpifkdZ26LOAth/CHae4s2W
	yI6MuNuHiqohWsLx4LIzlWP/BY8s4HcDpQqYThI4K/ZFHBUbj72y0X8w+iICfYTGqZD4=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1v8HDM-0001bP-6M;
	Mon, 13 Oct 2025 11:59:44 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jack@suse.cz>) id 1v8HDK-0001bI-F0
 for jfs-discussion@lists.sourceforge.net;
 Mon, 13 Oct 2025 11:59:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=65YchmjaU4/afzOfYncGWxSpSpwMbIPUmdJHCVAQsJ0=; b=mHYHSnaCb+zoA9E1gZcgxEgwnj
 6AjttWvCNaNkumjK0FWKWXTY7fYLMd5XnUNOr6joh6nSKSERS7MIuZExbBl9sT90ANGYG8tKEixGJ
 pyWdH0JGkkD2Z+cg91DfeGRqG/ziENZes3drG9T5wgAelPtFhyty7AAFHBBkDyx58yjg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=65YchmjaU4/afzOfYncGWxSpSpwMbIPUmdJHCVAQsJ0=; b=cAEST5lShdWUvGM4moZg8pn1RF
 jWtniS/hGz+THapwONUyoc4384RR1xv91xhiXV3UVBELj5nn3cqRMreHjqd/Bu4fWR6qMxG4YQbWA
 E/csSAobDCpjCCLbJlMsHXw8WPyYqgIQpimfWmWqdX/5IVMF6lBNIyMJ4YnIFo802jPY=;
Received: from smtp-out1.suse.de ([195.135.223.130])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1v8HDJ-0001gQ-U4 for jfs-discussion@lists.sourceforge.net;
 Mon, 13 Oct 2025 11:59:42 +0000
Received: from imap1.dmz-prg2.suse.org (imap1.dmz-prg2.suse.org
 [IPv6:2a07:de40:b281:104:10:150:64:97])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-out1.suse.de (Postfix) with ESMTPS id 54C23219BD;
 Mon, 13 Oct 2025 11:59:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1760356770; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=65YchmjaU4/afzOfYncGWxSpSpwMbIPUmdJHCVAQsJ0=;
 b=YMlz/os4GFl2vtP8mwGeoXm53hLwLCPEJblsob3IQxrWvk+OWwIKLj17v74P4CEvJ/VUe/
 +HVTKDtjX5NLglP0DFaoInVjGEEXfvUZM+HuS062SmrD9yAkwXMRPnBufJ7/CNHymNduLc
 l/RKCSzWDL81YSqHCvLNnFErKyCGxBc=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1760356770;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=65YchmjaU4/afzOfYncGWxSpSpwMbIPUmdJHCVAQsJ0=;
 b=ETy4GHphA8RJlkrrbZSA96ohF2idrC1LMJa2vT6HKHXqrWGzgPNhdSWb9Hxj2v1fxt4gDY
 P5DFm6ew9cL4HuDQ==
Authentication-Results: smtp-out1.suse.de;
 dkim=pass header.d=suse.cz header.s=susede2_rsa header.b="YMlz/os4";
 dkim=pass header.d=suse.cz header.s=susede2_ed25519 header.b=ETy4GHph
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1760356770; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=65YchmjaU4/afzOfYncGWxSpSpwMbIPUmdJHCVAQsJ0=;
 b=YMlz/os4GFl2vtP8mwGeoXm53hLwLCPEJblsob3IQxrWvk+OWwIKLj17v74P4CEvJ/VUe/
 +HVTKDtjX5NLglP0DFaoInVjGEEXfvUZM+HuS062SmrD9yAkwXMRPnBufJ7/CNHymNduLc
 l/RKCSzWDL81YSqHCvLNnFErKyCGxBc=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1760356770;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=65YchmjaU4/afzOfYncGWxSpSpwMbIPUmdJHCVAQsJ0=;
 b=ETy4GHphA8RJlkrrbZSA96ohF2idrC1LMJa2vT6HKHXqrWGzgPNhdSWb9Hxj2v1fxt4gDY
 P5DFm6ew9cL4HuDQ==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id 4827E13874;
 Mon, 13 Oct 2025 11:59:30 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
 by imap1.dmz-prg2.suse.org with ESMTPSA id OmSbEaLp7Gj9AgAAD6G6ig
 (envelope-from <jack@suse.cz>); Mon, 13 Oct 2025 11:59:30 +0000
Received: by quack3.suse.cz (Postfix, from userid 1000)
 id E4B13A0A58; Mon, 13 Oct 2025 13:59:21 +0200 (CEST)
Date: Mon, 13 Oct 2025 13:59:21 +0200
From: Jan Kara <jack@suse.cz>
To: Christoph Hellwig <hch@lst.de>
Message-ID: <t4y7xtgfnzfpfupnb7on33n6qzrfxfphsm2hqsa5rx4liqvvbc@wwj7ckhyilpo>
References: <20251013025808.4111128-1-hch@lst.de>
 <20251013025808.4111128-8-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251013025808.4111128-8-hch@lst.de>
X-Spam-Level: 
X-Spam-Flag: NO
X-Rspamd-Queue-Id: 54C23219BD
X-Rspamd-Action: no action
X-Rspamd-Server: rspamd1.dmz-prg2.suse.org
X-Spamd-Result: default: False [-4.01 / 50.00]; BAYES_HAM(-3.00)[99.99%];
 NEURAL_HAM_LONG(-1.00)[-1.000]; MID_RHS_NOT_FQDN(0.50)[];
 R_DKIM_ALLOW(-0.20)[suse.cz:s=susede2_rsa,suse.cz:s=susede2_ed25519];
 NEURAL_HAM_SHORT(-0.20)[-1.000]; MIME_GOOD(-0.10)[text/plain];
 MX_GOOD(-0.01)[]; ARC_NA(0.00)[]; RCVD_VIA_SMTP_AUTH(0.00)[];
 MISSING_XM_UA(0.00)[]; MIME_TRACE(0.00)[0:+];
 FUZZY_RATELIMITED(0.00)[rspamd.com];
 RCPT_COUNT_TWELVE(0.00)[24];
 DBL_BLOCKED_OPENRESOLVER(0.00)[suse.cz:dkim,imap1.dmz-prg2.suse.org:rdns,imap1.dmz-prg2.suse.org:helo,lst.de:email,suse.com:email];
 DNSWL_BLOCKED(0.00)[2a07:de40:b281:104:10:150:64:97:from,2a07:de40:b281:106:10:150:64:167:received];
 TO_DN_SOME(0.00)[]; FROM_EQ_ENVFROM(0.00)[];
 FROM_HAS_DN(0.00)[]; RCVD_COUNT_THREE(0.00)[3];
 TO_MATCH_ENVRCPT_ALL(0.00)[];
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
 Content preview:  On Mon 13-10-25 11:58:02,
 Christoph Hellwig wrote: > And rewrite
 filemap_fdatawrite to use filemap_fdatawrite_range instead > to have a simpler
 call chain. > > Signed-off-by: Christoph Hellwig <hch@ls [...] 
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
X-Headers-End: 1v8HDJ-0001gQ-U4
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
 v9fs@lists.linux.dev, linux-xfs@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 linux-btrfs@vger.kernel.org, Alexander Viro <viro@zeniv.linux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Mon 13-10-25 11:58:02, Christoph Hellwig wrote:
> And rewrite filemap_fdatawrite to use filemap_fdatawrite_range instead
> to have a simpler call chain.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>

...

>  int filemap_fdatawrite(struct address_space *mapping)
>  {
> -	return __filemap_fdatawrite(mapping, WB_SYNC_ALL);
> +	return filemap_fdatawrite_range(mapping, 0, LONG_MAX);

As Damien pointed out, here should be LLONG_MAX.


> @@ -470,7 +464,7 @@ EXPORT_SYMBOL_GPL(filemap_fdatawrite_range_kick);
>   */
>  int filemap_flush(struct address_space *mapping)
>  {
> -	return __filemap_fdatawrite(mapping, WB_SYNC_NONE);
> +	return filemap_fdatawrite_range_kick(mapping, 0, LLONG_MAX);
>  }
>  EXPORT_SYMBOL(filemap_flush);

filemap_fdatawrite_range_kick() doesn't exist at this point in the series.

								Honza
-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
