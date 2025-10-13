Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BC28BD1E77
	for <lists+jfs-discussion@lfdr.de>; Mon, 13 Oct 2025 10:01:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:References:To:MIME-Version:Date:
	Message-ID:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/ywsAgDsJ5/dtQubtV2d9bSyfjDJhlB91gccbli84QY=; b=RLQRKUAqwrMwmYQFg6blEozzke
	rryRWRmChrv5C7KQlYZoDX0nLCDnU5XfPFJ2U8F5rOKj/BtIQcX3SQNTSifi4eKyzRxgV/KvnDFAx
	P4YTYLI8M4dDYsWljPaNACi2+E8QFnRK4DLOlZfVtFLje1C7S9Zse3wfHPBBEJ5k7ASg=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1v8DUX-0005Kx-9W;
	Mon, 13 Oct 2025 08:01:14 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dlemoal@kernel.org>) id 1v8DUW-0005Kl-1D
 for jfs-discussion@lists.sourceforge.net;
 Mon, 13 Oct 2025 08:01:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gYPIu0z382mARksqcX6oqCVuSxEra6cmqKYW6l9BkG0=; b=FfN1DxE8TOqEGqkbb0rN3xRLxM
 2138SptyFvDzxE59U+KQ7sXG7qHk4gqQhItf6jwxct21gHBa65v2x1DfACw++9INDL88ql3pYfvOs
 24DTJzAy+xFBkbcP/GVOvLSrzEOMSFltovfMZ+Iky+pQFEyRb4kA3sUnovvHsCMf3sLA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=gYPIu0z382mARksqcX6oqCVuSxEra6cmqKYW6l9BkG0=; b=c1m3m9D8FscsL+LniYE8ZQbjf4
 ZPxCGOJZx3o9fVlAm3PSx19LSHhSrWyp6GdFjG0jO7AKOVaHEIRII0FhkUGybJZ2zBuCmRFzEyTFw
 JX6G8RkczFB8m0ZvhNQmjaSzs4Lr9Fx8uALFXTVAJAWsHhvzW4Drpv8Uq9pw+X8Yfn0w=;
Received: from sea.source.kernel.org ([172.234.252.31])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1v8DUW-0004Ln-4V for jfs-discussion@lists.sourceforge.net;
 Mon, 13 Oct 2025 08:01:12 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id CF549457EA;
 Mon, 13 Oct 2025 08:01:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3EFC6C4CEE7;
 Mon, 13 Oct 2025 08:01:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1760342465;
 bh=noRWn+euEOloBgxNJ8dGn+WU7na1mnGeYcuQeFZBKcQ=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=pBDGm9z/dvP+Dmxvki9hejV2S2ZVULKP9OcyfWsJmAwVMW/5h3Fo/Q0rTSY2/t8de
 MsMyqaxTxNJRsYNM2uYjQmQXuKyYHnBeLQgVj7eqUqoeQ2BZvE2kLgY0ZF1TThX559
 KjU63ZaEvxHmiAnfvVOHOLE1j1wh1PtMXDVNbJabzybEfpwQ84O3H3kktKYxV8w0E7
 g0ps/rPrEpS18LVK9PIjswWPewYBEj3gP4I4k6qRxRNznVUTWmodK0qXJs9/TeW6GQ
 g2yByYTih6aMzs+AniXcqoLXFAtm/8p1Hln96sK7ehRa5VP5QdfICnIaJb7vYUs1Yj
 gvisoLlYoia+A==
Message-ID: <74593bac-929b-4496-80e0-43d0f54d6b4c@kernel.org>
Date: Mon, 13 Oct 2025 17:01:01 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Christoph Hellwig <hch@lst.de>,
 "Matthew Wilcox (Oracle)" <willy@infradead.org>,
 Eric Van Hensbergen <ericvh@kernel.org>, Latchesar Ionkov
 <lucho@ionkov.net>, Dominique Martinet <asmadeus@codewreck.org>,
 Christian Schoenebeck <linux_oss@crudebyte.com>, Chris Mason <clm@fb.com>,
 David Sterba <dsterba@suse.com>, Mark Fasheh <mark@fasheh.com>,
 Joel Becker <jlbec@evilplan.org>, Joseph Qi <joseph.qi@linux.alibaba.com>
References: <20251013025808.4111128-1-hch@lst.de>
 <20251013025808.4111128-7-hch@lst.de>
Content-Language: en-US
Organization: Western Digital Research
In-Reply-To: <20251013025808.4111128-7-hch@lst.de>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 2025/10/13 11:58, Christoph Hellwig wrote: > Abstract out
 the btrfs-specific behavior of kicking off I/O on a number > of pages on
 an address_space into a well-defined helper. > > Signed-off-by: Ch [...] 
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
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1v8DUW-0004Ln-4V
Subject: Re: [Jfs-discussion] [PATCH 06/10] mm,
 btrfs: add a filemap_fdatawrite_kick_nr helper
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
From: Damien Le Moal via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Damien Le Moal <dlemoal@kernel.org>
Cc: linux-xfs@vger.kernel.org, Christian Brauner <brauner@kernel.org>,
 Jan Kara <jack@suse.cz>, linux-mm@kvack.org, v9fs@lists.linux.dev,
 Josef Bacik <josef@toxicpanda.com>, linux-block@vger.kernel.org,
 ocfs2-devel@lists.linux.dev, Alexander Viro <viro@zeniv.linux.org.uk>,
 jfs-discussion@lists.sourceforge.net, linux-fsdevel@vger.kernel.org,
 linux-ext4@vger.kernel.org, linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On 2025/10/13 11:58, Christoph Hellwig wrote:
> Abstract out the btrfs-specific behavior of kicking off I/O on a number
> of pages on an address_space into a well-defined helper.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>

One nit below.

Reviewed-by: Damien Le Moal <dlemoal@kernel.org>


> +/*
> + * Start writeback on @nr_to_write pages from @mapping.  No one but the existing
> + * btrfs caller should be using this.  Talk to linux-mm if you think adding a
> + * new caller is a good idea.
> + */
> +int filemap_fdatawrite_kick_nr(struct address_space *mapping, long *nr_to_write)

Not a huge fan of this name. Maybe filemap_fdatawrite_nrpages() ?


-- 
Damien Le Moal
Western Digital Research


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
