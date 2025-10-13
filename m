Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6742FBD23B1
	for <lists+jfs-discussion@lfdr.de>; Mon, 13 Oct 2025 11:15:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:References:To:MIME-Version:Date:
	Message-ID:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NHzBdh2t6p40NSYvtivwc5qx/w9cYpzgPEjCuFdgxo4=; b=cd/ByG2wkFGmWDID0Aoak8Hrv6
	Gb4+5/bmfXqwlJI0fQsxeQ+lBXjsnH4GYed2elG5qykR6N/zuZSWzxDidbQkVldAMV+VdFDf8ggrc
	0CH2Ptl+VOcDyacHuf39XYfYpXHBRaXpu/g8l3Klgm51UwelAWv/gjudv5G3sJyMXnTU=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1v8EeE-0008Eu-Lj;
	Mon, 13 Oct 2025 09:15:18 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <joseph.qi@linux.alibaba.com>) id 1v8EeC-0008El-5I
 for jfs-discussion@lists.sourceforge.net;
 Mon, 13 Oct 2025 09:15:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gGIOd7Ex2m90KckglAwHsiXkn+YFnTKWdf60l+zhCdc=; b=JIXxBTVVDTV82RK67E0M0Hx/lj
 p5f4oFi2oQPBnh6jfdXc9iBXWhgtDzvBrCI/HeJLmRShKgOiMvncDYKxUWh7NTOKWzMPwiSCavxWB
 +bsGR+XAsVKuHmIlBHwFMzPTZ80+JRAYERCGuqvh9/b4LpbK42pLZDgpEhcOhfLWbCM4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=gGIOd7Ex2m90KckglAwHsiXkn+YFnTKWdf60l+zhCdc=; b=bh9cJsUAHMQhfJ/1hrTy8uSehD
 g93dLh9Uup7iiKRWmJUj4u7zoXbiTDIF3GUVoe3HYjv1zFNm+92ix3Fo0KthPQhudVgshvGujUWwH
 I7Qh9q8igOFGniOcWBTNiqRG8YQ+WQ7fQ70HjJ7HRcKlDSLT28xQDLpShE7dvTklLoic=;
Received: from out30-131.freemail.mail.aliyun.com ([115.124.30.131])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1v8EeB-0004Gx-Da for jfs-discussion@lists.sourceforge.net;
 Mon, 13 Oct 2025 09:15:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux.alibaba.com; s=default;
 t=1760346903; h=Message-ID:Date:MIME-Version:Subject:To:From:Content-Type;
 bh=gGIOd7Ex2m90KckglAwHsiXkn+YFnTKWdf60l+zhCdc=;
 b=vIzPwZ9qQzC9Tu6VO1CrvwCKUhQe00U3agOTdCC8C82UIxabjGlEsR68yVCq6SOpNSweXEPIyWZIjkHWYpjTXQ/YhTBgf2WSSt6lbcS1iIZSFq/mtxEaN+MbOA8Pv0b7OazO0Q8DP3mrXkMfHXLJfSmCWrE4wU07HzXv2UO1ad8=
Received: from 30.221.129.221(mailfrom:joseph.qi@linux.alibaba.com
 fp:SMTPD_---0Wq2ERPx_1760345954 cluster:ay36) by smtp.aliyun-inc.com;
 Mon, 13 Oct 2025 16:59:15 +0800
Message-ID: <9b8abc79-8605-4c13-9d9f-972f90418cd2@linux.alibaba.com>
Date: Mon, 13 Oct 2025 16:59:14 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Christoph Hellwig <hch@lst.de>,
 "Matthew Wilcox (Oracle)" <willy@infradead.org>,
 Eric Van Hensbergen <ericvh@kernel.org>, Latchesar Ionkov
 <lucho@ionkov.net>, Dominique Martinet <asmadeus@codewreck.org>,
 Christian Schoenebeck <linux_oss@crudebyte.com>, Chris Mason <clm@fb.com>,
 David Sterba <dsterba@suse.com>, Mark Fasheh <mark@fasheh.com>,
 Joel Becker <jlbec@evilplan.org>
References: <20251013025808.4111128-1-hch@lst.de>
 <20251013025808.4111128-4-hch@lst.de>
In-Reply-To: <20251013025808.4111128-4-hch@lst.de>
X-Spam-Score: -7.7 (-------)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 2025/10/13 10:57,
 Christoph Hellwig wrote: > Use filemap_fdatawrite_range
 instead of opencoding the logic using > filemap_fdatawrite_wbc. There is
 a slight change in the conversion > as nr_to_write [...] 
 Content analysis details:   (-7.7 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -7.5 USER_IN_DEF_DKIM_WL From: address is in the default DKIM welcome-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay lines
X-Headers-End: 1v8EeB-0004Gx-Da
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
From: Joseph Qi via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Joseph Qi <joseph.qi@linux.alibaba.com>
Cc: linux-xfs@vger.kernel.org, Christian Brauner <brauner@kernel.org>,
 Jan Kara <jack@suse.cz>, linux-mm@kvack.org, v9fs@lists.linux.dev,
 Josef Bacik <josef@toxicpanda.com>, linux-block@vger.kernel.org,
 ocfs2-devel@lists.linux.dev, Alexander Viro <viro@zeniv.linux.org.uk>,
 jfs-discussion@lists.sourceforge.net, linux-fsdevel@vger.kernel.org,
 linux-ext4@vger.kernel.org, linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net



On 2025/10/13 10:57, Christoph Hellwig wrote:
> Use filemap_fdatawrite_range instead of opencoding the logic using
> filemap_fdatawrite_wbc.  There is a slight change in the conversion
> as nr_to_write is now set to LONG_MAX instead of double the number
> of the pages in the range.  LONG_MAX is the usual nr_to_write for
> WB_SYNC_ALL writeback, and the value expected by lower layers here.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>

Looks fine to me.
Reviewed-by: Joseph Qi <joseph.qi@linux.alibaba.com>

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



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
