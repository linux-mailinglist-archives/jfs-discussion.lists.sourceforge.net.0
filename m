Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F506B552AC
	for <lists+jfs-discussion@lfdr.de>; Fri, 12 Sep 2025 17:06:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:References:
	Message-ID:To:Date:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rWBnRKG/D/65W84x9o6s0toZtDcz/arQrLLtdIGoNQY=; b=HwWPHYhxsvxzMATGB3rU/SFlX1
	F5ckBMxMILI63nDiGOViWK0bWTuX9NrUYH2DR7jyx7w7n1hquhfNesnjntFafVR2IBD8HAbeZBa0r
	SfhB4CQ2fl2XgBya5LyIxYLKOvRuggGh6TSof3jo5RKFOLpho5IdA8foG46O4ccBSNPU=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ux5Lv-00058V-TW;
	Fri, 12 Sep 2025 15:06:20 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <djwong@kernel.org>) id 1ux5Lj-00057W-Ha
 for jfs-discussion@lists.sourceforge.net;
 Fri, 12 Sep 2025 15:06:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+H2LOaEAwxQiX1gDG141YeWhg2fdZFuLjG+/V6XHenY=; b=MUXUTKJajvYzCtE9J6TjwS/0Rj
 coXMkXG4XTiV5N84//1uB71qiDUinBClrJslEqBn5JtAw3Srek0qpUg80iVXWWBKrkkJjdsbBE3df
 1W26+ohUZ/OqEmdE5VY2PtTIlyAugD8ve+q1xJfI2gray4zGoDUSr93YQov7G2Iggzek=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+H2LOaEAwxQiX1gDG141YeWhg2fdZFuLjG+/V6XHenY=; b=gFSW8MBWp1O8GS+Fe1lFHtycQG
 FtiUt0m1XjyWNYok8sho9CXYkcI+1NGwANBkTZaH1MRGcjIaQlCVcIybRdY6VmMGpw5G4jx87U5QQ
 u+lvIUlpKlDJ8DSmXOlSdupVW2z8NcCmoCZjmdWZne8628DAHNgtIsVb83pQAD/hlbDU=;
Received: from tor.source.kernel.org ([172.105.4.254])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ux5Li-0002jb-Sw for jfs-discussion@lists.sourceforge.net;
 Fri, 12 Sep 2025 15:06:08 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 21B4C601D3;
 Fri, 12 Sep 2025 15:05:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B9DEEC4CEF1;
 Fri, 12 Sep 2025 15:05:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1757689555;
 bh=FEMpsaKNILw1LWW9PgrPUEjyVRdy+lNTf4a93hFSDCU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ggZNCJzAWraLvntXfeMfeiDI2AQwKSi/CMv4LAcRqcyZdoffP96etlBbO+MYrQfqM
 uANsl9/UKx2G30zOXwChThSt5p/S5fE5/oq4rHaHh6O6XDgvzZ1s6zgtnX8udGrU6o
 QQJ03wlo81mVR9YjY0q+rDdFvYc5SUl92asEqV1guQxQzsdX7SXYuMzcLEi+wx1hwn
 0Bi+kRaO6+gJHsJnaQ9lG4Mnpk9jw//Us3nnQ/hHirYmPCPt5vLmgVmcZHitFv80lk
 ZbvCFzo64rAGwDMkcYRULl4daHKpDZPLzcSL1BAQhhIsZIXOExU3J6h2U5Fd5iRx/f
 fzRQSzX6+MT9g==
Date: Fri, 12 Sep 2025 08:05:55 -0700
To: Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>
Message-ID: <20250912150555.GI1587915@frogsfrogsfrogs>
References: <1cd51309-096d-497f-8c5e-b0c9cca102fc@I-love.SAKURA.ne.jp>
 <dce0adb2-a592-44d8-b208-d939415b8d54@I-love.SAKURA.ne.jp>
 <a471c731-e6ae-408d-b8b8-94f3045b2966@I-love.SAKURA.ne.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a471c731-e6ae-408d-b8b8-94f3045b2966@I-love.SAKURA.ne.jp>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, Sep 12, 2025 at 11:18:44PM +0900, Tetsuo Handa wrote:
 > The inode mode loaded from corrupted disk can be invalid. Do like what
 > commit 0a9e74051313 ("isofs: Verify inode mode when loading fro [...] 
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
X-Headers-End: 1ux5Li-0002jb-Sw
Subject: Re: [Jfs-discussion] [PATCH (REPOST)] jfs: Verify inode mode when
 loading from disk
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
From: "Darrick J. Wong via Jfs-discussion"
 <jfs-discussion@lists.sourceforge.net>
Reply-To: "Darrick J. Wong" <djwong@kernel.org>
Cc: Dave Kleikamp <shaggy@kernel.org>, Christian Brauner <brauner@kernel.org>,
 jfs-discussion@lists.sourceforge.net, LKML <linux-kernel@vger.kernel.org>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Fri, Sep 12, 2025 at 11:18:44PM +0900, Tetsuo Handa wrote:
> The inode mode loaded from corrupted disk can be invalid. Do like what
> commit 0a9e74051313 ("isofs: Verify inode mode when loading from disk")
> does.
> 
> Reported-by: syzbot <syzbot+895c23f6917da440ed0d@syzkaller.appspotmail.com>
> Closes: https://syzkaller.appspot.com/bug?extid=895c23f6917da440ed0d
> Signed-off-by: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
> ---
> This fix is similar to fixes for other filesystems, but got no response.
> Do we have to wait for Ack from Dave Kleikamp for another month?

Let's hope not, this is a validation issue...

>  fs/jfs/inode.c | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
> 
> diff --git a/fs/jfs/inode.c b/fs/jfs/inode.c
> index fcedeb514e14..21f3d029da7d 100644
> --- a/fs/jfs/inode.c
> +++ b/fs/jfs/inode.c
> @@ -59,9 +59,15 @@ struct inode *jfs_iget(struct super_block *sb, unsigned long ino)
>  			 */
>  			inode->i_link[inode->i_size] = '\0';
>  		}
> -	} else {
> +	} else if (S_ISCHR(inode->i_mode) || S_ISBLK(inode->i_mode) ||
> +		   S_ISFIFO(inode->i_mode) || S_ISSOCK(inode->i_mode)) {
>  		inode->i_op = &jfs_file_inode_operations;
>  		init_special_inode(inode, inode->i_mode, inode->i_rdev);
> +	} else {
> +		printk(KERN_DEBUG "JFS: Invalid file type 0%04o for inode %lu.\n",
> +		       inode->i_mode, inode->i_ino);
> +		iget_failed(inode);
> +		return ERR_PTR(-EIO);

...but how about EFSCORRUPTED instead of EIO here?  Several filesystems
(xfs, ext*, erofs, f2fs, fuse, ocfs2, udf) return that for corrupt
metadata.

--D

>  	}
>  	unlock_new_inode(inode);
>  	return inode;
> -- 
> 2.51.0
> 
> 


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
