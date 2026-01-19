Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 14253D3B1A9
	for <lists+jfs-discussion@lfdr.de>; Mon, 19 Jan 2026 17:42:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:In-Reply-To:References:
	MIME-Version:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RFf75v7Z4RzV/M6aClobT65z1rNjJCG9oyC4QnwmpaI=; b=Hn+V5fN1p5ujB2YjeFzJw8wXQw
	0PO+nLNHT8VB7Sx+Eil1bcDPhCb+r1QUxb00SOYD7TnsGV6J03bR4vRR5l1nFPRVmJwbVSLKyt7eN
	1VuEQq8Edcah/4OjyQNsoWDTrLLM8av8F6GnMiM815wC8Vt87Go+Pbs2NFVjLvdkwCPI=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vhsJu-0003jQ-5e;
	Mon, 19 Jan 2026 16:41:38 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <amir73il@gmail.com>) id 1vhsJt-0003ho-0q
 for jfs-discussion@lists.sourceforge.net;
 Mon, 19 Jan 2026 16:41:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fTdB35vgqJbH8V4J4HP1Mukd5M1Q72aH7//uMfZpgyU=; b=Y3GxgQGMtd1X2kzpgsIoWfsSzs
 uRFnNl9hs1isHLh64/gU3TNpgLoLNIjm7BQmrwUKuop0JZpx6LbIDJG2BDeEP6VXss7zAlFEF8mXK
 CDtpeIkG7oZI2IV52SHaaQLmJFgz8GNXBvWomeEcr7WM2iZ9Q81UpOnTJnNzi6ZMJinA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=fTdB35vgqJbH8V4J4HP1Mukd5M1Q72aH7//uMfZpgyU=; b=dS86clEFp9ngfxP0qofqTUkaHx
 lnhRqjdh+L92kJ0jV0z/5pmT2Ysr/YUjtyYHVbqpvrh3n8m+frUz5///LeJJTW+uTXXu9J7EjeMfN
 eylLyFTFZcKl1cjl9GmWggajdF6trc+kI7hW4bVKvKue9Ay1R0RiNeYIyGAYHAPsR+VU=;
Received: from mail-ed1-f42.google.com ([209.85.208.42])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vhsJs-0000VK-Bk for jfs-discussion@lists.sourceforge.net;
 Mon, 19 Jan 2026 16:41:36 +0000
Received: by mail-ed1-f42.google.com with SMTP id
 4fb4d7f45d1cf-64b83949fdaso6947607a12.2
 for <jfs-discussion@lists.sourceforge.net>;
 Mon, 19 Jan 2026 08:41:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1768840890; cv=none;
 d=google.com; s=arc-20240605;
 b=fSt10qg5hvrOO0V6GWACso4xYxPonjx8EU6RWpE1nBZHwVW3OhwHXKh9KDlU7Gxs+y
 mDlpixCGv0AlqBBPdyIzeiGUvLtGN9yiJxizzAC8XxMx11EzkvWez2vuU8NudvxWAr7v
 td86pUgfvEEoFZolOQyZJXu4EtP6kwIDLKeR0LaPbf1hkUAs2sXJM6FCsZkkHxE5frQb
 hDgOex73zf+aXo8dIV+x6MwU9pmBVA9g6v3o0dWGTJpVhhS/Tuq+CXbjBWPjMHks5CJU
 oQZ86+GFIcVjfKSApCFsxjNOIw8rmwrIZJyQTxqaYD5rNOSwUmsBlSKw6MnnhqnkPZDZ
 KJPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:dkim-signature;
 bh=fTdB35vgqJbH8V4J4HP1Mukd5M1Q72aH7//uMfZpgyU=;
 fh=BvTrT2u2RicWuVbT3QV7V8KjnZ1PkjXqddCv92QkYKc=;
 b=N3m78Fqtw62Hd224Yg2g7K2ieATtU67lAApBjARb/XEPXOzIib7yzWZ9RssWHdb78z
 MD/HeSnaFP1EVnzlMt8w7FRje8mEvM/n5RFgAjqzr7PK1AChR2pX0MYbqBXfvepVcSkY
 kzyPqYNsoEO3diWRb2vaxn5C/5wu1n/LTe0YnYgOw0O1mKQjJZ+f1Tsl33oqlRFvNk5D
 1Ye3lHc20GTdrEgmZ7nLw0ZSnv6U/QMvQoPMgI2sQUsvqC52TnpmXUXnnM/GJMVqmFCL
 iECQsfildI8waams3hJ/QR+Fq80D8/CkPe1U3pj415u8IBJ8B1mpRgJWJnS+aONQCh2E
 FEDQ==; darn=lists.sourceforge.net
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1768840890; x=1769445690; darn=lists.sourceforge.net;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=fTdB35vgqJbH8V4J4HP1Mukd5M1Q72aH7//uMfZpgyU=;
 b=JAYwW2EqbJoAgOuUrKfXkH2IJMFKcQJG3D1gBKiVowswT3Yio8BgrjTYYWw52PgkhT
 SyhMb8/+q57RBjrd5xDP1h2Ewzope17QCsz5obO4t4V/twYu936VqmByCedKqt7tYSoh
 Y8mCWHRkM+YKO70cADrSqIDWeW20YotKJDfEpZLbzsnYQlG3ZrZAbzgeXh70sDulNiuR
 6H6tc9tKQa24eQ4rHOiS2admBSWVma4nb8R6I+dSBkEytDnQ26S4uFydDFflImHXwVH9
 fxStNiR2iSk98Rj5jchhsZGOz6XCZ6z4AT2e60OSTh5cq1vdA2VcchNBKRdQCIgD0MNn
 G4MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1768840890; x=1769445690;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=fTdB35vgqJbH8V4J4HP1Mukd5M1Q72aH7//uMfZpgyU=;
 b=gBdUUrX5sq2pSZMxLuUn3bqJlcTosWWX+direuNAR9JRjPcL24IKGhHsEfmilEp3Kw
 jZLAcMCDlCYK8xTp2kZmqwWvzemzu2BZijJb4zER1DOv0RBcZjiPIIGu1kSCW8G7pVyl
 j9GohHjyKIBGQ9hAi/osWeHp21TTf1C2Z75Vcof2wI3BmPgqUdx9TNQ7ss/AaCo/l3Tt
 1lZHjeXh0rWZeNTbSBtvMykwZwA/qnw9gGq36xF09isJ1A+Rmc+MT9ZudmbIVL4huA2w
 w2xE492LuJyglbj+r1G4tlFVKCOl/D9tXfcN+iM2q98u+O9CYMjVSl2Y1HVLuOE7fJ10
 D3Dw==
X-Forwarded-Encrypted: i=1;
 AJvYcCW8HRkWUZRpPVD9Filtqm1qkYf/YZp7jHWYjQu28U+O55jRQwBYrcezhwMPJtW3/CJXq8Q0EiOAp1mq/FzkQg==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YzpQfbG1KJlmutMh1XiAg6ePa9VWM1mf1wCtuzEya7K54hjWIPy
 T3GCOG1NspxLKM4v9d9prI109OH2+BPrLbpuqhIePueSbgMAihZpdCJlRx81dyyiOQjyqgF+zyn
 bGl49C8NtwfBQ35gBVEw8fzIeeIqMS/c=
X-Gm-Gg: AZuq6aJEr6auay7gIXfL1H6xhml5nxvSu/IZ8dHLLr8BZOoWLpewUDYIJFVZPAL52UU
 LhO58oucq+S/YHWCz6O8Hgc4I0eAW0kw7K5B7D98sGabw7F1VwkWiMku2tm3xVFTMcgxEgulc1H
 wEJO8bbaO4wsc0tAg2svuSr4Ryzj8eHoyAYeYIFdKj9fHBnpJ/pTW4MlQVGIr2dTsHb6UuUaodJ
 ww1+EUoLDNUF36AqL1/nyZk+/NOFQt+jzeDF3LxbI8qFcsUmZZTPDt87bmFKJpSgJUseuV0P3S+
 GuPv1dDbdNlDPYDZANov0GBfawcO1g==
X-Received: by 2002:a05:6402:518b:b0:64e:f6e1:e517 with SMTP id
 4fb4d7f45d1cf-65452cd98e9mr9387079a12.32.1768840889299; Mon, 19 Jan 2026
 08:41:29 -0800 (PST)
MIME-Version: 1.0
References: <20260119-exportfs-nfsd-v2-0-d93368f903bd@kernel.org>
 <20260119-exportfs-nfsd-v2-2-d93368f903bd@kernel.org>
In-Reply-To: <20260119-exportfs-nfsd-v2-2-d93368f903bd@kernel.org>
Date: Mon, 19 Jan 2026 17:41:16 +0100
X-Gm-Features: AZwV_QgHvJ6NvIXON-eIYvnT5PkMvN0FHfW-0LujoZ3K-fhpCrZ1N6375iX4_4Y
Message-ID: <CAOQ4uxjX8EcG5XssJ91u8Kn0gY9Rb0qCwnte_7j6Q6knvZ1shw@mail.gmail.com>
To: Jeff Layton <jlayton@kernel.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Jan 19, 2026 at 5:27 PM Jeff Layton wrote: > > At
 one time, nfsd could take the presence of struct export_operations to > be
 an indicator that a filesystem was exportable via NFS. Since then [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 ARC_VALID              Message has a valid ARC signature
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 ARC_SIGNED             Message has a ARC signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 [amir73il(at)gmail.com]
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.42 listed in wl.mailspike.net]
X-Headers-End: 1vhsJs-0000VK-Bk
Subject: Re: [Jfs-discussion] [PATCH v2 02/31] exportfs: add new
 EXPORT_OP_STABLE_HANDLES flag
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
From: Amir Goldstein via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Amir Goldstein <amir73il@gmail.com>
Cc: Martin Brandenburg <martin@omnibond.com>,
 jfs-discussion@lists.sourceforge.net, Jan Kara <jack@suse.cz>,
 Paulo Alcantara <pc@manguebit.org>, Alex Markuze <amarkuze@redhat.com>,
 Sandeep Dhavale <dhavale@google.com>, linux-btrfs@vger.kernel.org,
 Carlos Maiolino <cem@kernel.org>, Dave Chinner <david@fromorbit.com>,
 linux-unionfs@vger.kernel.org,
 Konstantin Komarov <almaz.alexandrovich@paragon-software.com>,
 Chris Mason <clm@fb.com>, Andreas Dilger <adilger.kernel@dilger.ca>,
 Chunhai Guo <guochunhai@vivo.com>, Ronnie Sahlberg <ronniesahlberg@gmail.com>,
 linux-mtd@lists.infradead.org, Mike Marshall <hubcap@omnibond.com>,
 linux-xfs@vger.kernel.org, linux-nilfs@vger.kernel.org,
 Yue Hu <zbestahu@gmail.com>, Miklos Szeredi <miklos@szeredi.hu>,
 Richard Weinberger <richard@nod.at>, Mark Fasheh <mark@fasheh.com>,
 linux-doc@vger.kernel.org, Hugh Dickins <hughd@google.com>,
 Dai Ngo <Dai.Ngo@oracle.com>, Ryusuke Konishi <konishi.ryusuke@gmail.com>,
 Christoph Hellwig <hch@infradead.org>, NeilBrown <neil@brown.name>,
 Ilya Dryomov <idryomov@gmail.com>, linux-ext4@vger.kernel.org,
 Salah Triki <salah.triki@gmail.com>, linux-mm@kvack.org,
 devel@lists.orangefs.org, Shyam Prasad N <sprasad@microsoft.com>,
 Olga Kornievskaia <okorniev@redhat.com>, linux-cifs@vger.kernel.org,
 Dave Kleikamp <shaggy@kernel.org>, Chao Yu <chao@kernel.org>,
 linux-nfs@vger.kernel.org, Tom Talpey <tom@talpey.com>,
 ocfs2-devel@lists.linux.dev, Bharath SM <bharathsm@microsoft.com>,
 David Sterba <dsterba@suse.com>, Alexander Viro <viro@zeniv.linux.org.uk>,
 Baolin Wang <baolin.wang@linux.alibaba.com>,
 Jeffle Xu <jefflexu@linux.alibaba.com>, Jaegeuk Kim <jaegeuk@kernel.org>,
 ceph-devel@vger.kernel.org, Gao Xiang <xiang@kernel.org>,
 OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>,
 Andreas Gruenbacher <agruenba@redhat.com>, gfs2@lists.linux.dev,
 Christian Brauner <brauner@kernel.org>, Theodore Ts'o <tytso@mit.edu>,
 Luis de Bethencourt <luisbg@kernel.org>,
 Joseph Qi <joseph.qi@linux.alibaba.com>, linux-erofs@lists.ozlabs.org,
 Jonathan Corbet <corbet@lwn.net>, samba-technical@lists.samba.org,
 linux-kernel@vger.kernel.org, linux-f2fs-devel@lists.sourceforge.net,
 Steve French <sfrench@samba.org>, Chuck Lever <chuck.lever@oracle.com>,
 Hongbo Li <lihongbo22@huawei.com>, Anna Schumaker <anna@kernel.org>,
 Jan Kara <jack@suse.com>, linux-fsdevel@vger.kernel.org,
 Phillip Lougher <phillip@squashfs.org.uk>,
 Andrew Morton <akpm@linux-foundation.org>, ntfs3@lists.linux.dev,
 David Woodhouse <dwmw2@infradead.org>,
 David Laight <david.laight.linux@gmail.com>,
 Trond Myklebust <trondmy@kernel.org>, Joel Becker <jlbec@evilplan.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

T24gTW9uLCBKYW4gMTksIDIwMjYgYXQgNToyN+KAr1BNIEplZmYgTGF5dG9uIDxqbGF5dG9uQGtl
cm5lbC5vcmc+IHdyb3RlOgo+Cj4gQXQgb25lIHRpbWUsIG5mc2QgY291bGQgdGFrZSB0aGUgcHJl
c2VuY2Ugb2Ygc3RydWN0IGV4cG9ydF9vcGVyYXRpb25zIHRvCj4gYmUgYW4gaW5kaWNhdG9yIHRo
YXQgYSBmaWxlc3lzdGVtIHdhcyBleHBvcnRhYmxlIHZpYSBORlMuIFNpbmNlIHRoZW4sIGEKPiBs
b3Qgb2YgZmlsZXN5c3RlbXMgaGF2ZSBncm93biBleHBvcnQgb3BlcmF0aW9ucyBpbiBvcmRlciB0
byBwcm92aWRlCj4gZmlsZWhhbmRsZSBzdXBwb3J0LiBTb21lIG9mIHRob3NlIChlLmcuIGtlcm5m
cywgcGlkZnMsIGFuZCBuc2ZzKSBhcmUgbm90Cj4gc3VpdGFibGUgZm9yIGV4cG9ydCB2aWEgTkZT
IHNpbmNlIHRoZXkgbGFjayBmaWxlaGFuZGxlcyB0aGF0IGFyZQo+IHN0YWJsZSBhY3Jvc3MgcmVi
b290Lgo+Cj4gQWRkIGEgbmV3IEVYUE9SVF9PUF9TVEFCTEVfSEFORExFUyBmbGFnIHRoYXQgaW5k
aWNhdGVzIHRoYXQgdGhlCj4gZmlsZXN5c3RlbSBzdXBwb3J0cyBwZXJpc2lzdGVudCBmaWxlaGFu
ZGxlcywKCnBlcnNpc3RlbnQgc3RpbGwgaGVyZT8KIi4uLmFyZSBzdGFibGUgYWNyb3NzIHRoZSBs
aWZldGltZSBvZiBhIGZpbGUiPwoKPiBhIHJlcXVpcmVtZW50IGZvciBuZnMKPiBleHBvcnQuIFdo
aWxlIGluIHRoZXJlLCBzd2l0Y2ggdG8gdGhlIEJJVCgpIG1hY3JvIGZvciBkZWZpbmluZyB0aGVz
ZQo+IGZsYWdzLgoKTWF5YmUgeW91IHdhbnQgdG8gbW92ZSB0aGF0IGNsZWFudXAgdG8gcGF0Y2gg
MSBhbG9uZyB3aXRoIHRoZQpleHBvcnQucnN0IHN5bmM/IG5vdCBhIG11c3QuCgo+Cj4gRm9yIG5v
dywgdGhlIGZsYWcgaXMgbm90IGNoZWNrZWQgYW55d2hlcmUuIFRoYXQgd2lsbCBjb21lIGxhdGVy
IGFmdGVyCj4gd2UndmUgYWRkZWQgaXQgdG8gdGhlIGV4aXN0aW5nIGZpbGVzeXN0ZW1zIHRoYXQg
bmVlZCB0byByZW1haW4KPiBleHBvcnRhYmxlLgo+Cj4gUmV2aWV3ZWQtYnk6IEphbiBLYXJhIDxq
YWNrQHN1c2UuY3o+Cj4gU2lnbmVkLW9mZi1ieTogSmVmZiBMYXl0b24gPGpsYXl0b25Aa2VybmVs
Lm9yZz4KPiAtLS0KPiAgRG9jdW1lbnRhdGlvbi9maWxlc3lzdGVtcy9uZnMvZXhwb3J0aW5nLnJz
dCB8ICA3ICsrKysrKysKPiAgaW5jbHVkZS9saW51eC9leHBvcnRmcy5oICAgICAgICAgICAgICAg
ICAgICB8IDE2ICsrKysrKysrKy0tLS0tLS0KPiAgMiBmaWxlcyBjaGFuZ2VkLCAxNiBpbnNlcnRp
b25zKCspLCA3IGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZmls
ZXN5c3RlbXMvbmZzL2V4cG9ydGluZy5yc3QgYi9Eb2N1bWVudGF0aW9uL2ZpbGVzeXN0ZW1zL25m
cy9leHBvcnRpbmcucnN0Cj4gaW5kZXggMDU4M2EwNTE2YjFlM2EzZTZhMTBhZjk1ZmY4ODUwNmNm
MDJmN2RmNC4uMGMyOWVlNDRlMzQ4NGNlZjg0ZDJkM2Q0NzgxOWFjZjE3MmQyNzVhMyAxMDA2NDQK
PiAtLS0gYS9Eb2N1bWVudGF0aW9uL2ZpbGVzeXN0ZW1zL25mcy9leHBvcnRpbmcucnN0Cj4gKysr
IGIvRG9jdW1lbnRhdGlvbi9maWxlc3lzdGVtcy9uZnMvZXhwb3J0aW5nLnJzdAo+IEBAIC0yNDQs
MyArMjQ0LDEwIEBAIGZvbGxvd2luZyBmbGFncyBhcmUgZGVmaW5lZDoKPiAgICAgIG5mc2QuIEEg
Y2FzZSBpbiBwb2ludCBpcyByZWV4cG9ydCBvZiBORlMgaXRzZWxmLCB3aGljaCBjYW4ndCBiZSBk
b25lCj4gICAgICBzYWZlbHkgd2l0aG91dCBjb29yZGluYXRpbmcgdGhlIGdyYWNlIHBlcmlvZCBo
YW5kbGluZy4gT3RoZXIgY2x1c3RlcmVkCj4gICAgICBhbmQgbmV0d29ya2VkIGZpbGVzeXN0ZW1z
IGNhbiBiZSBwcm9ibGVtYXRpYyBoZXJlIGFzIHdlbGwuCj4gKwo+ICsgIEVYUE9SVF9PUF9TVEFC
TEVfSEFORExFUyAtIFRoaXMgZmlsZXN5c3RlbSBwcm92aWRlcyBmaWxlaGFuZGxlcyB0aGF0IGFy
ZQo+ICsgICAgc3RhYmxlIGFjcm9zcyB0aGUgbGlmZXRpbWUgb2YgYSBmaWxlLiBUaGlzIGlzIGEg
aGFyZCByZXF1aXJlbWVudCBmb3IgZXhwb3J0Cj4gKyAgICB2aWEgbmZzZC4gQW55IGZpbGVzeXN0
ZW0gdGhhdCBpcyBlbGlnaWJsZSB0byBiZSBleHBvcnRlZCB2aWEgbmZzZCBtdXN0Cj4gKyAgICBp
bmRpY2F0ZSB0aGlzIGd1YXJhbnRlZSBieSBzZXR0aW5nIHRoaXMgZmxhZy4gTW9zdCBkaXNrLWJh
c2VkIGZpbGVzeXN0ZW1zCj4gKyAgICBjYW4gZG8gdGhpcyBuYXR1cmFsbHkuIFBzZXVkb2ZpbGVz
eXN0ZW1zIHRoYXQgYXJlIGZvciBsb2NhbCByZXBvcnRpbmcgYW5kCj4gKyAgICBjb250cm9sIChl
LmcuIGtlcm5mcywgcGlkZnMsIG5zZnMpIHVzdWFsbHkgY2FuJ3Qgc3VwcG9ydCB0aGlzLgo+IGRp
ZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L2V4cG9ydGZzLmggYi9pbmNsdWRlL2xpbnV4L2V4cG9y
dGZzLmgKPiBpbmRleCBmMGNmMjcxNGVjNTJkZDk0MmI4ZjFjNDU1YTI1NzAyYmQ3ZTQxMmIzLi5j
NGUwZjA4MzI5MGU3ZTM0MTM0MmNmMGI0NWI1OGZkZGRhM2FmNjVlIDEwMDY0NAo+IC0tLSBhL2lu
Y2x1ZGUvbGludXgvZXhwb3J0ZnMuaAo+ICsrKyBiL2luY2x1ZGUvbGludXgvZXhwb3J0ZnMuaAo+
IEBAIC0zLDYgKzMsNyBAQAo+ICAjZGVmaW5lIExJTlVYX0VYUE9SVEZTX0ggMQo+Cj4gICNpbmNs
dWRlIDxsaW51eC90eXBlcy5oPgo+ICsjaW5jbHVkZSA8bGludXgvYml0cy5oPgo+ICAjaW5jbHVk
ZSA8bGludXgvcGF0aC5oPgo+Cj4gIHN0cnVjdCBkZW50cnk7Cj4gQEAgLTI3NywxNSArMjc4LDE2
IEBAIHN0cnVjdCBleHBvcnRfb3BlcmF0aW9ucyB7Cj4gICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBpbnQgbnJfaW9tYXBzLCBzdHJ1Y3QgaWF0dHIgKmlhdHRyKTsKPiAgICAgICAgIGludCAo
KnBlcm1pc3Npb24pKHN0cnVjdCBoYW5kbGVfdG9fcGF0aF9jdHggKmN0eCwgdW5zaWduZWQgaW50
IG9mbGFncyk7Cj4gICAgICAgICBzdHJ1Y3QgZmlsZSAqICgqb3BlbikoY29uc3Qgc3RydWN0IHBh
dGggKnBhdGgsIHVuc2lnbmVkIGludCBvZmxhZ3MpOwo+IC0jZGVmaW5lICAgICAgICBFWFBPUlRf
T1BfTk9XQ0MgICAgICAgICAgICAgICAgICgweDEpIC8qIGRvbid0IGNvbGxlY3QgdjMgd2NjIGRh
dGEgKi8KPiAtI2RlZmluZSAgICAgICAgRVhQT1JUX09QX05PU1VCVFJFRUNISyAgICAgICAgICAo
MHgyKSAvKiBubyBzdWJ0cmVlIGNoZWNraW5nICovCj4gLSNkZWZpbmUgICAgICAgIEVYUE9SVF9P
UF9DTE9TRV9CRUZPUkVfVU5MSU5LICAgKDB4NCkgLyogY2xvc2UgZmlsZXMgYmVmb3JlIHVubGlu
ayAqLwo+IC0jZGVmaW5lIEVYUE9SVF9PUF9SRU1PVEVfRlMgICAgICAgICAgICAoMHg4KSAvKiBG
aWxlc3lzdGVtIGlzIHJlbW90ZSAqLwo+IC0jZGVmaW5lIEVYUE9SVF9PUF9OT0FUT01JQ19BVFRS
ICAgICAgICAgICAgICAgICgweDEwKSAvKiBGaWxlc3lzdGVtIGNhbm5vdCBzdXBwbHkKPiArI2Rl
ZmluZSBFWFBPUlRfT1BfTk9XQ0MgICAgICAgICAgICAgICAgICAgICAgICBCSVQoMCkgLyogZG9u
J3QgY29sbGVjdCB2MyB3Y2MgZGF0YSAqLwo+ICsjZGVmaW5lIEVYUE9SVF9PUF9OT1NVQlRSRUVD
SEsgICAgICAgICBCSVQoMSkgLyogbm8gc3VidHJlZSBjaGVja2luZyAqLwo+ICsjZGVmaW5lIEVY
UE9SVF9PUF9DTE9TRV9CRUZPUkVfVU5MSU5LICBCSVQoMikgLyogY2xvc2UgZmlsZXMgYmVmb3Jl
IHVubGluayAqLwo+ICsjZGVmaW5lIEVYUE9SVF9PUF9SRU1PVEVfRlMgICAgICAgICAgICBCSVQo
MykgLyogRmlsZXN5c3RlbSBpcyByZW1vdGUgKi8KPiArI2RlZmluZSBFWFBPUlRfT1BfTk9BVE9N
SUNfQVRUUiAgICAgICAgICAgICAgICBCSVQoNCkgLyogRmlsZXN5c3RlbSBjYW5ub3Qgc3VwcGx5
Cj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBhdG9t
aWMgYXR0cmlidXRlIHVwZGF0ZXMKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAqLwo+IC0jZGVmaW5lIEVYUE9SVF9PUF9GTFVTSF9PTl9DTE9TRSAgICAg
ICAoMHgyMCkgLyogZnMgZmx1c2hlcyBmaWxlIGRhdGEgb24gY2xvc2UgKi8KPiAtI2RlZmluZSBF
WFBPUlRfT1BfTk9MT0NLUyAgICAgICAgICAgICAgKDB4NDApIC8qIG5vIGZpbGUgbG9ja2luZyBz
dXBwb3J0ICovCj4gKyNkZWZpbmUgRVhQT1JUX09QX0ZMVVNIX09OX0NMT1NFICAgICAgIEJJVCg1
KSAvKiBmcyBmbHVzaGVzIGZpbGUgZGF0YSBvbiBjbG9zZSAqLwo+ICsjZGVmaW5lIEVYUE9SVF9P
UF9OT0xPQ0tTICAgICAgICAgICAgICBCSVQoNikgLyogbm8gZmlsZSBsb2NraW5nIHN1cHBvcnQg
Ki8KPiArI2RlZmluZSBFWFBPUlRfT1BfU1RBQkxFX0hBTkRMRVMgICAgICAgQklUKDcpIC8qIGZo
cyBhcmUgc3RhYmxlIGFjcm9zcyByZWJvb3QgKi8KPiAgICAgICAgIHVuc2lnbmVkIGxvbmcgICBm
bGFnczsKPiAgfTsKPgo+Cj4gLS0KPiAyLjUyLjAKPgoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkpmcy1kaXNjdXNzaW9uIG1haWxpbmcgbGlzdApKZnMt
ZGlzY3Vzc2lvbkBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3Jn
ZS5uZXQvbGlzdHMvbGlzdGluZm8vamZzLWRpc2N1c3Npb24K
