Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CB3378D109
	for <lists+jfs-discussion@lfdr.de>; Wed, 30 Aug 2023 02:24:02 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qb8zm-0005v7-31;
	Wed, 30 Aug 2023 00:23:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <viro@ftp.linux.org.uk>) id 1qb8zk-0005uh-IJ;
 Wed, 30 Aug 2023 00:23:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Sender:In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zZxZUyqerb7julFXQ03Jti/01WDk420m8vSi4C3S7Zg=; b=VpYwNnNZA6V8R2fEV02j59dh24
 Dc98UEXfabr45lIGAwnUGERiwY5atqBDnDfW2kfxhoVObV5xKikUV73ESGUXnZ3MtQ0S9bK0ag/3k
 M2wvH5isNwtENupC8Uj0aUv+Cm0pFLLtkvabIMvcnUGgf37qoXh8rIMnfcXqiflUPa9o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Sender:In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=zZxZUyqerb7julFXQ03Jti/01WDk420m8vSi4C3S7Zg=; b=DAVoyRNt5FXPLpQBMNmmdKv8Jq
 iGjmM6oX5WvX1zWHLCVowr3SftX93xCJnoChCWjVUysTXYBdLz/XLQ6dm8En4BBttLwv/LiXy8I5I
 lXaTHl/MGWp79vOzWnLgTPm2a7CDwyBnkneqNRpaKNJouWX5szDh0yzkKMEkqWJvv2C8=;
Received: from zeniv.linux.org.uk ([62.89.141.173])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qb8zi-00015y-Rn; Wed, 30 Aug 2023 00:23:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=linux.org.uk; s=zeniv-20220401; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=zZxZUyqerb7julFXQ03Jti/01WDk420m8vSi4C3S7Zg=; b=C+B8K/E0jwmlP3x0ynEg/wW0oT
 8W+g7CEhf7EdCVJx+aCWMaLZ8rDm21ORLwQNEzBBlnKI8nSnQEIfBUqrKOBnjUNllXW768GzG3qB7
 +cpJ/jhntfWbFQ/3QFzCMkG1sg2st+PpzLnPrKtYydQR6EDaMR8Bc+aEbQhcPGU53TF4NXxBCLwrJ
 Y+Cse/dfbORxx77QJVsCQ4BCKysmxvXtFDzxb882a/rtaocFDwQw24nZDPRB3CytP/MOuWTM+mTfa
 +8MJ/m4rwupUEXN1Mh5oBPLgZehFHGmgz56mU9Gh95pn90zVDOFdIxrpzwqUqcKtUFnurzTC7a4a3
 phr8qPBQ==;
Received: from viro by zeniv.linux.org.uk with local (Exim 4.96 #2 (Red Hat
 Linux)) id 1qb8vV-001xXV-0L; Wed, 30 Aug 2023 00:19:17 +0000
Date: Wed, 30 Aug 2023 01:19:17 +0100
To: Jeff Layton <jlayton@kernel.org>
Message-ID: <20230830001917.GC461907@ZenIV>
References: <20230705185812.579118-1-jlayton@kernel.org>
 <20230705185812.579118-3-jlayton@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230705185812.579118-3-jlayton@kernel.org>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Jul 05, 2023 at 02:58:11PM -0400, Jeff Layton wrote:
 > + * POSIX mandates that the old and new parent directories have their ctime
 and > + * mtime updated, and that inodes of @old_dentry and @new_dentry (if
 any), have > + * their ctime updated. 
 Content analysis details:   (-0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1qb8zi-00015y-Rn
Subject: Re: [Jfs-discussion] [PATCH v2 08/92] fs: new helper:
 simple_rename_timestamp
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
From: Al Viro via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Al Viro <viro@zeniv.linux.org.uk>
Cc: lucho@ionkov.net, rafael@kernel.org, djwong@kernel.org, al@alarsen.net,
 cmllamas@google.com, andrii@kernel.org, hughd@google.com,
 john.johansen@canonical.com, agordeev@linux.ibm.com, hch@lst.de,
 hubcap@omnibond.com, pc@manguebit.com, linux-xfs@vger.kernel.org,
 bvanassche@acm.org, jeffxu@chromium.org, mpe@ellerman.id.au,
 john@keeping.me.uk, yi.zhang@huawei.com, jmorris@namei.org,
 christophe.leroy@csgroup.eu, code@tyhicks.com, stern@rowland.harvard.edu,
 borntraeger@linux.ibm.com, devel@lists.orangefs.org, mirimmad17@gmail.com,
 sprasad@microsoft.com, jaharkes@cs.cmu.edu, linux-um@lists.infradead.org,
 npiggin@gmail.com, jlbec@evilplan.org, ericvh@kernel.org, surenb@google.com,
 trond.myklebust@hammerspace.com, anton@tuxera.com, brauner@kernel.org,
 wsa+renesas@sang-engineering.com, gregkh@linuxfoundation.org,
 stephen.smalley.work@gmail.com, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, lsahlber@redhat.com, senozhatsky@chromium.org,
 arve@android.com, chuck.lever@oracle.com, svens@linux.ibm.com,
 jolsa@kernel.org, jack@suse.com, tj@kernel.org, akpm@linux-foundation.org,
 linux-trace-kernel@vger.kernel.org, xu.xin16@zte.com.cn, shaggy@kernel.org,
 dhavale@google.com, penguin-kernel@i-love.sakura.ne.jp, zohar@linux.ibm.com,
 linux-mm@kvack.org, joel@joelfernandes.org, edumazet@google.com,
 sdf@google.com, jomajm@gmail.com, linux-s390@vger.kernel.org,
 linux-nilfs@vger.kernel.org, paul@paul-moore.com, leon@kernel.org,
 john.fastabend@gmail.com, mcgrof@kernel.org, chi.minghao@zte.com.cn,
 codalist@coda.cs.cmu.edu, selinux@vger.kernel.org, zhangpeng362@huawei.com,
 quic_ugoswami@quicinc.com, yhs@fb.com, yzaikin@google.com,
 linkinjeon@kernel.org, mhiramat@kernel.org, ecryptfs@vger.kernel.org,
 tkjos@android.com, madkar@cs.stonybrook.edu, gor@linux.ibm.com,
 yuzhe@nfschina.com, linuxppc-dev@lists.ozlabs.org,
 reiserfs-devel@vger.kernel.org, miklos@szeredi.hu, huyue2@coolpad.com,
 jaegeuk@kernel.org, gargaditya08@live.com, maco@android.com,
 hirofumi@mail.parknet.co.jp, haoluo@google.com, tony.luck@intel.com,
 tytso@mit.edu, nico@fluxnic.net, linux-ntfs-dev@lists.sourceforge.net,
 muchun.song@linux.dev, roberto.sassu@huawei.com,
 linux-f2fs-devel@lists.sourceforge.net, yang.yang29@zte.com.cn,
 gpiccoli@igalia.com, ebiederm@xmission.com, anna@kernel.org,
 quic_uaggarwa@quicinc.com, bwarrum@linux.ibm.com, mike.kravetz@oracle.com,
 jingyuwang_vip@163.com, linux-efi@vger.kernel.org, error27@gmail.com,
 martin@omnibond.com, trix@redhat.com, ocfs2-devel@lists.linux.dev,
 ast@kernel.org, sebastian.reichel@collabora.com, clm@fb.com,
 linux-mtd@lists.infradead.org, willy@infradead.org, marc.dionne@auristor.com,
 linux-afs@lists.infradead.org, raven@themaw.net, naohiro.aota@wdc.com,
 daniel@iogearbox.net, dennis.dalessandro@cornelisnetworks.com,
 linux-rdma@vger.kernel.org, quic_linyyuan@quicinc.com, coda@cs.cmu.edu,
 idryomov@gmail.com, pabeni@redhat.com, adobriyan@gmail.com, serge@hallyn.com,
 chengzhihao1@huawei.com, axboe@kernel.dk, amir73il@gmail.com,
 linuszeng@tencent.com, keescook@chromium.org, arnd@arndb.de,
 autofs@vger.kernel.org, rostedt@goodmis.org, yifeliu@cs.stonybrook.edu,
 dlemoal@kernel.org, eparis@parisplace.org, ceph-devel@vger.kernel.org,
 xiang@kernel.org, yijiangshan@kylinos.cn, dhowells@redhat.com,
 linux-nfs@vger.kernel.org, linux-ext4@vger.kernel.org, kolga@netapp.com,
 song@kernel.org, samba-technical@lists.samba.org, sfrench@samba.org,
 jk@ozlabs.org, netdev@vger.kernel.org, rpeterso@redhat.com,
 linux-fsdevel@vger.kernel.org, bpf@vger.kernel.org, ntfs3@lists.linux.dev,
 linux-erofs@lists.ozlabs.org, davem@davemloft.net,
 jfs-discussion@lists.sourceforge.net, princekumarmaurya06@gmail.com,
 ebiggers@google.com, neilb@suse.de, asmadeus@codewreck.org,
 linux_oss@crudebyte.com, me@bobcopeland.com, kpsingh@kernel.org,
 okanatov@gmail.com, almaz.alexandrovich@paragon-software.com,
 joseph.qi@linux.alibaba.com, hayama@lineo.co.jp, adilger.kernel@dilger.ca,
 mikulas@artax.karlin.mff.cuni.cz, shaozhengchao@huawei.com,
 chenzhongjin@huawei.com, ardb@kernel.org, anton.ivanov@cambridgegreys.com,
 agruenba@redhat.com, richard@nod.at, mark@fasheh.com, shr@devkernel.io,
 Dai.Ngo@oracle.com, cluster-devel@redhat.com, jgg@ziepe.ca, kuba@kernel.org,
 riel@surriel.com, salah.triki@gmail.com, dushistov@mail.ru,
 linux-cifs@vger.kernel.org, hca@linux.ibm.com, chao@kernel.org,
 apparmor@lists.ubuntu.com, josef@toxicpanda.com, Liam.Howlett@oracle.com,
 tom@talpey.com, hdegoede@redhat.com, linux-hardening@vger.kernel.org,
 aivazian.tigran@gmail.com, dchinner@redhat.com, dsterba@suse.com,
 xiubli@redhat.com, konishi.ryusuke@gmail.com, jgross@suse.com, jth@kernel.org,
 rituagar@linux.ibm.com, luisbg@kernel.org, martin.lau@linux.dev,
 v9fs@lists.linux.dev, fmdefrancesco@gmail.com, linux-unionfs@vger.kernel.org,
 lrh2000@pku.edu.cn, linux-security-module@vger.kernel.org,
 ezk@cs.stonybrook.edu, jefflexu@linux.alibaba.com, linux@treblig.org,
 hannes@cmpxchg.org, phillip@squashfs.org.uk, johannes@sipsolutions.net,
 sj1557.seo@samsung.com, dwmw2@infradead.org,
 linux-karma-devel@lists.sourceforge.net, linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Wed, Jul 05, 2023 at 02:58:11PM -0400, Jeff Layton wrote:

> + * POSIX mandates that the old and new parent directories have their ctime and
> + * mtime updated, and that inodes of @old_dentry and @new_dentry (if any), have
> + * their ctime updated.

APPLICATION USAGE
Some implementations mark for update the last file status change timestamp
of renamed files and some do not. Applications which make use of the
last file status change timestamp may behave differently with respect
to renamed files unless they are designed to allow for either behavior.

So for children POSIX permits rather than mandates.  Doesn't really matter;
Linux behaviour had been to touch ctime on children since way back, if
not since the very beginning.


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
