Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D214BD1F64
	for <lists+jfs-discussion@lfdr.de>; Mon, 13 Oct 2025 10:14:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:References:To:MIME-Version:Date:
	Message-ID:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=X/EwCid8G8GL4La2fE0DgyCJy3QAjzhdEIWKpgQuGlg=; b=CxpubSN7Geqd8+xT17pJqrN1hq
	WY+2ZVtwfvCC9I7FeuEfVCcHJU6Z5bxyA9svwOjAMyE5mABWoUcZuqSKf0QeWqrPi9/hfQjhbnLhy
	6jzK1iezl3fwM0wxWNEOx0RYufIj4iAPL/sADOGm4lfxhh8CULwJGAIB1M6w/FHX28xo=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1v8Dh4-00054F-LE;
	Mon, 13 Oct 2025 08:14:10 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dlemoal@kernel.org>) id 1v8Dh3-000547-4k
 for jfs-discussion@lists.sourceforge.net;
 Mon, 13 Oct 2025 08:14:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OXwozSeMlS70Sl3oI0odNiKy3vdryBhBgECDo9dwsrQ=; b=RXhrZ82t4rrarRp/M55AUC8n6y
 DbGUEewdY7u8cvLEcLEPvX5eEaNWynEUDSv19Hlv2xfUcTao6JAA+Edolxs5Sc3mMn26H8TUuSVH3
 cnt/Tbrn2BU3hBT3KJHBkGxjcz7x+a/uAjnmN+S+AZPTcT1ywMaG3wlas0XdBD7QF/rw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=OXwozSeMlS70Sl3oI0odNiKy3vdryBhBgECDo9dwsrQ=; b=QR/ePUPubbSLhe+Jsp3CiVIDXW
 On78l8wsZweMTMVG2yXXzKR6S96DhKD4t0jRrvGcbLKNJGzL/XN6X/tPFvHmQ/DV5xyqrXPIu6ZI/
 o9DiTQ6ItKTJ+DtiuaCR1OHD7K+32T8uSOa5l1DxJYhtxry5dtrIBNWGABMhVrccQUZY=;
Received: from tor.source.kernel.org ([172.105.4.254])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1v8Dh2-0006Bw-O6 for jfs-discussion@lists.sourceforge.net;
 Mon, 13 Oct 2025 08:14:09 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id A47A06111E;
 Mon, 13 Oct 2025 08:05:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BB19FC4CEE7;
 Mon, 13 Oct 2025 08:05:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1760342758;
 bh=5HsWbtZ2dcB7krEcbKjne7KnS+nPBJU93qavaxJizuM=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=JoJ5YBKdMmynvxsqiAkHkZbrbXNbh1kQQdkhIKnwG6b9L6o3Uzqi1X27KlKrsP3Fl
 R+lbP/clJGXkbhS5NEhqi0WhSG87d70ezCBhCv1BktJRTGsKjbOMR2s0X7m2rPZ0Za
 aJ89IXK3xmT7/fyqzwHbHH3uYFwcU8sSKoILbJ6+EgEN5d0jr/somN9ZzIA7z4pSU1
 vSAsqr50CL9MnLXn4g22yvpe4Rxs3HtQAYyAu3lN/RpP31W4v5IU0188xLD7bhEdEo
 rs2FORcAaC7QLU5udePhJZbhtXDoEEFtFdrkp7D0ifJNyNJWapFn9NwLgNGUylYwx6
 Gyj0yBRoVk77w==
Message-ID: <227fc5f2-c16c-4fb2-be02-e7b1f37559dc@kernel.org>
Date: Mon, 13 Oct 2025 17:05:53 +0900
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
 <20251013025808.4111128-9-hch@lst.de>
Content-Language: en-US
Organization: Western Digital Research
In-Reply-To: <20251013025808.4111128-9-hch@lst.de>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 2025/10/13 11:58,
 Christoph Hellwig wrote: > Replace filemap_fdatawrite_wbc, 
 which exposes a writeback_control to the > callers with a __filemap_fdatawrite
 helper that takes all the possible > argu [...] 
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
X-Headers-End: 1v8Dh2-0006Bw-O6
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
> Replace filemap_fdatawrite_wbc, which exposes a writeback_control to the
> callers with a __filemap_fdatawrite helper that takes all the possible
> arguments and declares the writeback_control itself.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>

Reviewed-by: Damien Le Moal <dlemoal@kernel.org>

-- 
Damien Le Moal
Western Digital Research


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
