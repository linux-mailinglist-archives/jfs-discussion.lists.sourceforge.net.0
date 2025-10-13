Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B2A47BD1E31
	for <lists+jfs-discussion@lfdr.de>; Mon, 13 Oct 2025 09:56:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:References:To:MIME-Version:Date:
	Message-ID:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xIkKHYg3uIhrzHzwFkTVycIqqTfNp+zvgo4c71MpXz8=; b=bur5QVaiyg+7APXsB5XgRiyLtj
	A9A/wwiXfsNT03xfNwlMkqtFPHcgncd2PF2Cd/90Y1y1yI3laj/YgJle7Xtd4JWJhmFNZ71jBFypR
	BtO93Y3TK+e3bYwB7ZeRYEXS39ypm3Cv3lW4pnwgSF/5uyd3UkxwcCM1WPXY0ZhXXbx4=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1v8DPc-0004Zl-RH;
	Mon, 13 Oct 2025 07:56:08 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dlemoal@kernel.org>) id 1v8DPb-0004Zc-18
 for jfs-discussion@lists.sourceforge.net;
 Mon, 13 Oct 2025 07:56:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=k6JY4ljRru+mLGsidDjVKshW6S3LGQOqHzxa6CnY5eU=; b=Bl48FF0Y3Yd6d4DPegPk9eHzcP
 88Y+TJuQRo9jnCEFtZeNcMVTUQ5P8qJZ8JtMN7c1OW9BnsDBc2wAAferIH6vVaZhxx4xyiloYGTiA
 Lqs/dJ73jtQXwtny+LgVIcJreWbZ+imFOB3FFSQrDj0qTlmfzeBZcluoaFGQEuUgeMbA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=k6JY4ljRru+mLGsidDjVKshW6S3LGQOqHzxa6CnY5eU=; b=bTxau5fE1PxD+6DZ+mvQS2JFLs
 IdotcQ0UXwCcMSEG9GAYY4Z3V8yOhr1up9hc+bTpgleISZ+vmeFGZC+vueYv+kzsgUZN83oh54qsd
 phKLL2i0SdUs6Sv4biluA0wP0PF2JltU0Y7u3uYwNVX8ENXmjpQ+kR1h/6PSgMuTeui4=;
Received: from tor.source.kernel.org ([172.105.4.254])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1v8DPa-0003vv-Jc for jfs-discussion@lists.sourceforge.net;
 Mon, 13 Oct 2025 07:56:06 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id ED5AE60F75;
 Mon, 13 Oct 2025 07:55:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 233C0C4CEE7;
 Mon, 13 Oct 2025 07:55:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1760342155;
 bh=mgqubBXmcDUB0Vocd771Uy113a9CMlT/bu1FmLbtKOo=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=N6gq+hjHSCsbUKZZjniwkCj7yvgxSN3jmQu09ii02JLpjVZZaG1+SqSfGTa2PeQ9x
 R7zyxn85U6fWuqA2AB23LvwxslESlaO5wo5K7hZ/gvYDn+OVkG2vUNL9ufHlCEsvAV
 q+hC/o+wKMQWBb5bcyxqJh1BetJEcjhid1m9y7HnLAFbp3G+xhhZ23Cnl4l4WWHD76
 V2jEgIkBRxE3s9Xn3yq02N9b78hjJl85DrFjOxiO8abK6gSh0CQMZ79HAaVzGzOwvD
 XLcWUDUdyi4nGwosNspIhk/cPOcSTvepUqz9oxzPF3sdkl9nM8rHgA74VUSGFn9FSG
 Fj7T8n4JaMxlQ==
Message-ID: <65aad714-3f1d-4f4b-bb8f-6f751ff756b7@kernel.org>
Date: Mon, 13 Oct 2025 16:55:50 +0900
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
 <20251013025808.4111128-6-hch@lst.de>
Content-Language: en-US
Organization: Western Digital Research
In-Reply-To: <20251013025808.4111128-6-hch@lst.de>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 2025/10/13 11:58,
 Christoph Hellwig wrote: > In preparation
 for changing the filemap_fdatawrite_wbc API to not expose > the
 writeback_control
 to the callers, push the wbc declaration next to > the [...] 
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
X-Headers-End: 1v8DPa-0003vv-Jc
Subject: Re: [Jfs-discussion] [PATCH 05/10] btrfs: push struct
 writeback_control into start_delalloc_inodes
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
> In preparation for changing the filemap_fdatawrite_wbc API to not expose
> the writeback_control to the callers, push the wbc declaration next to
> the filemap_fdatawrite_wbc call and just pass thr nr_to_write value to

s/thr/the

> start_delalloc_inodes.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>

...

> @@ -8831,9 +8821,10 @@ int btrfs_start_delalloc_roots(struct btrfs_fs_info *fs_info, long nr,
>  			       &fs_info->delalloc_roots);
>  		spin_unlock(&fs_info->delalloc_root_lock);
>  
> -		ret = start_delalloc_inodes(root, &wbc, false, in_reclaim_context);
> +		ret = start_delalloc_inodes(root, nr_to_write, false,
> +				in_reclaim_context);
>  		btrfs_put_root(root);
> -		if (ret < 0 || wbc.nr_to_write <= 0)
> +		if (ret < 0 || nr <= 0)

Before this change, wbc.nr_to_write will indicate what's remaining, not what you
asked for. So I think you need a change like you did in start_delalloc_inodes(),
no ?

>  			goto out;
>  		spin_lock(&fs_info->delalloc_root_lock);
>  	}


-- 
Damien Le Moal
Western Digital Research


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
