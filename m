Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A6836BD206D
	for <lists+jfs-discussion@lfdr.de>; Mon, 13 Oct 2025 10:24:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:References:To:MIME-Version:Date:
	Message-ID:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NRCCUToansGSShWhk22ICB+HuU7EyN/WEH9AQdRDszw=; b=Tzs601tAJGy5WFHvXaWSPJBFHz
	BpYIUY9HJPNMg36FRFUr0hukSSmAxRdL5MsXnfQzu9h59xp/VxGApKy8LJu2LRvc/tlotW5QiQJS/
	vqpa0XAOS5O8DPpO1IFcCcisDhHipmHJVRDzyFSXx6RG/0FVuiQGgx1+kkWYLpAI2edU=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1v8DqJ-0006qs-JT;
	Mon, 13 Oct 2025 08:23:43 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dlemoal@kernel.org>) id 1v8Dq7-0006mJ-9I
 for jfs-discussion@lists.sourceforge.net;
 Mon, 13 Oct 2025 08:23:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gWZgHXxBcz5Iy79EMz07wJ3G/Gcb4/W61XEISke+Y60=; b=NBJwbUH7NMs7l2dYuNvVBuYXnZ
 tQ1DBOTSh4YtUQtux9QyqTWxSY+6upkukCda5DxCvzybVz9O03cKx02VbyJ/OFd+ujExubL6Nrzgl
 mN9ILEKlU3jZLoYhpN/HF4Sxs57emmVlXF9doImA940PHcXHqpAwSpxi6eMREVBFRh0w=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=gWZgHXxBcz5Iy79EMz07wJ3G/Gcb4/W61XEISke+Y60=; b=YFedDUxXHQAbo3aMEEO2O6rKXs
 YctJXKDbkWDCT6aRfDPOTldygqDTPdy55glo7OWalnDi0YrlCDtGoaNFak581JslwR2kgEsD6y5ff
 bxj88mvhrBnc2uR6Bep2SLL0J5wCYF+QxkfagBf9I4vMJExl5gsx6PxvUiDgrtzi/bRc=;
Received: from sea.source.kernel.org ([172.234.252.31])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1v8Dq6-00077o-Tv for jfs-discussion@lists.sourceforge.net;
 Mon, 13 Oct 2025 08:23:31 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 876C445B72;
 Mon, 13 Oct 2025 08:23:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E29EDC4CEE7;
 Mon, 13 Oct 2025 08:23:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1760343800;
 bh=cnSh8W6jhFCAzaT940CS+TKEufGQdg5GaKndRn4BVvk=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=Z7GUKc0pKniE7mLAPZ/6pqdvN6WS2EGnlbQRlV7qxincVQQUZa2U3P7ChEwKeVC4x
 SlEKS8xSrHY3CnyD3YbWDRS/kA0K60YGo053lr62M+geB650bwBSwyC8aQjQLkzuKk
 kHFlR90vbfuxBpdkKSCdFPB8lmMCQ0ustwXMoTx+EvvSGfl74gubOnvcn+Vd+uQzft
 dOtpQMN8sqT4KxQxAVE+mkkL349M6U9ZIrsk7THwobYeYosNK80tQEvOXdrX4Swmgj
 iFt3eWBkG9Ar/XnxgL5APEFIX+GCqgi2thNRqaBVBW/tJDHGT8OJLVYu9/UXd4+e7s
 660G6HX+IccMQ==
Message-ID: <6f7e9453-de4e-4f43-ac1c-aaf9322cc6a4@kernel.org>
Date: Mon, 13 Oct 2025 17:23:15 +0900
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
 <20251013025808.4111128-11-hch@lst.de>
Content-Language: en-US
Organization: Western Digital Research
In-Reply-To: <20251013025808.4111128-11-hch@lst.de>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 2025/10/13 11:58,
 Christoph Hellwig wrote: > Make the naming
 consistent with the other helpers and get away from > the flush terminology
 that is way to overloaded. s/to/too > > Signed-off-by: Christoph Hellwig
 <hch@lst.de> 
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
X-Headers-End: 1v8Dq6-00077o-Tv
Subject: Re: [Jfs-discussion] [PATCH 10/10] mm: rename filemap_flush to
 filemap_fdatawrite_kick
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
> Make the naming consistent with the other helpers and get away from
> the flush terminology that is way to overloaded.

s/to/too

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
