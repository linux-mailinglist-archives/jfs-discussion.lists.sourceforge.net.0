Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CB5EBBD1DF8
	for <lists+jfs-discussion@lfdr.de>; Mon, 13 Oct 2025 09:49:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:References:To:MIME-Version:Date:
	Message-ID:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nmSG90DRNduav+Wo/hpwGh8R/rJB/9tU5oStA6akaAE=; b=d/8lyALNXJ0sRHFw9HFyWR4K4F
	jTbpw0vkq0RDN3Jqo0hHPd9ELQ1f2+VDJOc4NBz5hJWobpjRMIUwI1mtZvNRMafRvrBsborHJMF+P
	uB3wVMVJFl3xljWzNX6T5qaPNv2IpdYP85je5ytZG6pk2LUkjuHedzghSBcKKqdMW9aI=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1v8DIx-0005lZ-MO;
	Mon, 13 Oct 2025 07:49:15 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dlemoal@kernel.org>) id 1v8DIw-0005lS-Kc
 for jfs-discussion@lists.sourceforge.net;
 Mon, 13 Oct 2025 07:49:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/04k12wRWiK9frGle9V+OT1Cl+gSGkskLavjV0fiUoQ=; b=bMwXK96f8Sx1bc9Fy89qTq8IvJ
 5tkpEQzAs/TmTGsYS7rEiaw4UCl0kdW+oLUILInTQfnIf0QDz44vwQbQuXxijF8gARhCYgyEk5IyI
 qeo8fkkOJgbOm90KFpoHTxmtJ2JyKxvH+k1GDymhskEPCaK/xdN/Td8LUPHSZV4xHnm4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=/04k12wRWiK9frGle9V+OT1Cl+gSGkskLavjV0fiUoQ=; b=B/q+xUbBzctfm6FHGEPSySaieu
 jpPXm6n/UYwdjaxw0csDX1667YbBdhhTXoOtR7wosRaAbsO7Pz5ktb/WUwjHtKVL8BZuJs9oc3jQJ
 6smeCDALsWkHNHw7SSJ4Kql2SjgTIcpxx4oiLJGNraPDZrz9dr2HNYNwj2j8xj/vVft0=;
Received: from tor.source.kernel.org ([172.105.4.254])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1v8DIw-0003MK-9R for jfs-discussion@lists.sourceforge.net;
 Mon, 13 Oct 2025 07:49:14 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 8C08060B51;
 Mon, 13 Oct 2025 07:42:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B319CC4CEE7;
 Mon, 13 Oct 2025 07:42:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1760341352;
 bh=98uNYnRqcVdtyKijP43iNr9FBYNN1buUB0s6rxs7Jnc=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=SZ5eg06eGhWCDln8zwWXVDi++rSzVsHgAzWQJp6ZN6j1s72t724fV2Jbt/DoD4/7a
 lzXCYqRFefu97LfS0v6l7l6RNbjUdksNgGIFVCwXCqmnBLTCzAuPu2jsND1qCnheSU
 5WvUZoBYTtf+4hn9pSm37g9eScUL/M8svS4SRwjVFz0odn/HOFPYo+EQ9uTGkE0A3Y
 t8lC4ps3+kZ+rjKfDGchS64/XB0CnIm4l5cAXgqyDnOGPQV/PEg8HibmPCecq80TYA
 jShbsfAa3bAHekN7SMuo/X0dgr/3gIkq2mzIt9VcRrdCC14ERZA4Q1iuF9y9GfIYsH
 oUreoxYxkdAVg==
Message-ID: <8efa955a-21c4-42b9-a734-a06a46fd51c7@kernel.org>
Date: Mon, 13 Oct 2025 16:42:27 +0900
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
 <20251013025808.4111128-3-hch@lst.de>
Content-Language: en-US
Organization: Western Digital Research
In-Reply-To: <20251013025808.4111128-3-hch@lst.de>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 2025/10/13 11:57,
 Christoph Hellwig wrote: > Use filemap_fdatawrite_range
 instead of opencoding the logic using > filemap_fdatawrite_wbc. > >
 Signed-off-by:
 Christoph Hellwig <hch@lst.de> Reviewed-by: Damien Le Moal
 <dlemoal@kernel.org>
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
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1v8DIw-0003MK-9R
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

On 2025/10/13 11:57, Christoph Hellwig wrote:
> Use filemap_fdatawrite_range instead of opencoding the logic using
> filemap_fdatawrite_wbc.
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
