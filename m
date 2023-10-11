Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CE5297C53FE
	for <lists+jfs-discussion@lfdr.de>; Wed, 11 Oct 2023 14:28:27 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qqYJv-000831-VK;
	Wed, 11 Oct 2023 12:28:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <max.kellermann@ionos.com>) id 1qqYJu-00082v-Ik
 for jfs-discussion@lists.sourceforge.net;
 Wed, 11 Oct 2023 12:28:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KhRvlvbfNNUdcA0ulFhXxzCGgb7/Qvy9mlYrvDGbA4o=; b=VTQvZK6zpsJtMTiO3WEm+cvRsG
 VxhIQiHipZAu4DnBcbMaHYQl+J8ayWUx1soiSTzseghOdeBDDuU25PjpFBOpiJjBjpiSmhAGOHPRw
 59/RQ3WE6OVtxwKsFmU99EFRgViq4B8Aad5APXFEyud3sV3caaUEoaHcjBVia/v9v970=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=KhRvlvbfNNUdcA0ulFhXxzCGgb7/Qvy9mlYrvDGbA4o=; b=IXW6IoxCUZoosifoT8mg7nOmI8
 iWSpoPDClx3vWL/og1iVvf8AE1n5rkKuJ+NYeOgXLLOkTqZBQTb1QwLzlFNzlTHBxzoYyjKSx6npX
 sh7MHFMDodF0emd9H+5juVJhs69RoWvgGfaLAQlHG9sRyTR65ApsdMhG5mDB/WnSlnf8=;
Received: from mail-lj1-f176.google.com ([209.85.208.176])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qqYJr-0007dh-6U for jfs-discussion@lists.sourceforge.net;
 Wed, 11 Oct 2023 12:28:08 +0000
Received: by mail-lj1-f176.google.com with SMTP id
 38308e7fff4ca-2c00df105f8so87078691fa.2
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 11 Oct 2023 05:28:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ionos.com; s=google; t=1697027281; x=1697632081; darn=lists.sourceforge.net; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=KhRvlvbfNNUdcA0ulFhXxzCGgb7/Qvy9mlYrvDGbA4o=;
 b=gs/9hw+QU/It4ImFHk2+1Qw0RkQbB69Fwc/74kueFL1ZoXSjqBkVhVjVUAClg3DbTQ
 gU/tWuPdI5y2zBZR50fEzo/3J+LruLlP8FTgJ8jAxBrD7qAEed/CJT1fZbcJ0pRxuzMZ
 NNrKZYkFD1fiZQrm1iHnEVSWECnnLlELTFKc3eEd5dEfmAqP3ymx9Yw2R2rHeOXRnBFj
 O4NVemo7GmBFFF6/CgjMSsSgHAr0dsapifB+ohN/zzsMbvNHE4qC5IOtIDGlC91eIgeH
 C6RkbMbA6p+5Y10DxhMt4e2ebNu+R4n8RDTfnn3mpYFKfGjDYU3RYt3WAAmrVhu0WZfn
 mj3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1697027281; x=1697632081;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=KhRvlvbfNNUdcA0ulFhXxzCGgb7/Qvy9mlYrvDGbA4o=;
 b=vapm1kCpkKkuA14Urw3mGPi1VcrFk64TYQDp+W5/gtGtfgvFm+fsZWJ63w/teMC6Qa
 Tcjg3szYFulOw4elCzd0Yc/UhPxETEPyzbDn0Muq1oXkijENrrllDCaZlqa5NuFLCafH
 42pQqS5caHrry5JOo7yjL9nXwgCWr1zSzkeeTt//pyAuhbyG1RTEfQJkNgVMSh9n/7CF
 L2XQTCL2GFGf0+nBVnYqdV80Uik7/RY8zorlC0Epg+LDZ57Oio4YRJFLNNd9Jh8UJsn+
 p5evwSffh+zIX7DEsx5cYkMN28Oxvq/sL59aFEES49XXJZjT/TxJ1/FcwrLR3n1WIFeE
 m+BQ==
X-Gm-Message-State: AOJu0Yx0PIPezqQWz6kJxlWLv7k39Qwa+kRbo9dHTMIMYDUhf4SsTPUI
 WcMLTHR0VXbCvKV5zPcqSKn07yray65pX8S/SGZjRA==
X-Google-Smtp-Source: AGHT+IHm4h91Xo0Sfo6un9kAB1YWATtgKcIRKV/DG0s/oi+mth9sdLaot9TMvdLIG7eI6nTPi6+7LH1TSKKK+oU/b40=
X-Received: by 2002:a2e:998a:0:b0:2bc:b75e:b8b with SMTP id
 w10-20020a2e998a000000b002bcb75e0b8bmr18178845lji.38.1697027280733; Wed, 11
 Oct 2023 05:28:00 -0700 (PDT)
MIME-Version: 1.0
References: <69dda7be-d7c8-401f-89f3-7a5ca5550e2f@oracle.com>
 <20231009144340.418904-1-max.kellermann@ionos.com>
 <20231010131125.3uyfkqbcetfcqsve@quack3>
 <CAKPOu+-nC2bQTZYL0XTzJL6Tx4Pi1gLfNWCjU2Qz1f_5CbJc1w@mail.gmail.com>
 <20231011100541.sfn3prgtmp7hk2oj@quack3>
 <CAKPOu+_xdFALt9sgdd5w66Ab6KTqiy8+Z0Yd3Ss4+92jh8nCwg@mail.gmail.com>
 <20231011120655.ndb7bfasptjym3wl@quack3>
 <CAKPOu+-hLrrpZShHh0o6uc_KMW91suEd0_V_uzp5vMf4NM-8yw@mail.gmail.com>
In-Reply-To: <CAKPOu+-hLrrpZShHh0o6uc_KMW91suEd0_V_uzp5vMf4NM-8yw@mail.gmail.com>
Date: Wed, 11 Oct 2023 14:27:49 +0200
Message-ID: <CAKPOu+_0yjg=PrwAR8jKok8WskjdDEJOBtu3uKR_4Qtp8b7H1Q@mail.gmail.com>
To: Jan Kara <jack@suse.cz>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Wed, Oct 11, 2023 at 2:18 PM Max Kellermann <max.kellermann@ionos.com>
    wrote: > But without the other filesystems. I'll resend it with just the
   > posix_acl.h hunk. Thinking again, I don't think this is the proper solution.
    This may server as a workaround so those broken filesystems don't suffer
   from this bug, but it's not proper. 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.208.176 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.208.176 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
X-Headers-End: 1qqYJr-0007dh-6U
Subject: Re: [Jfs-discussion] [PATCH v2] fs/{posix_acl, ext2, jfs,
 ceph}: apply umask if ACL support is disabled
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
From: Max Kellermann via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Max Kellermann <max.kellermann@ionos.com>
Cc: Dave Kleikamp <shaggy@kernel.org>, jfs-discussion@lists.sourceforge.net,
 linux-ext4@vger.kernel.org, Yang Xu <xuyang2018.jy@fujitsu.com>,
 Jeff Layton <jlayton@kernel.org>, linux-kernel@vger.kernel.org,
 Christian Brauner <brauner@kernel.org>, Jan Kara <jack@suse.com>,
 linux-fsdevel@vger.kernel.org, Ilya Dryomov <idryomov@gmail.com>,
 Xiubo Li <xiubli@redhat.com>, ceph-devel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

T24gV2VkLCBPY3QgMTEsIDIwMjMgYXQgMjoxOOKAr1BNIE1heCBLZWxsZXJtYW5uIDxtYXgua2Vs
bGVybWFubkBpb25vcy5jb20+IHdyb3RlOgo+IEJ1dCB3aXRob3V0IHRoZSBvdGhlciBmaWxlc3lz
dGVtcy4gSSdsbCByZXNlbmQgaXQgd2l0aCBqdXN0IHRoZQo+IHBvc2l4X2FjbC5oIGh1bmsuCgpU
aGlua2luZyBhZ2FpbiwgSSBkb24ndCB0aGluayB0aGlzIGlzIHRoZSBwcm9wZXIgc29sdXRpb24u
IFRoaXMgbWF5CnNlcnZlciBhcyBhIHdvcmthcm91bmQgc28gdGhvc2UgYnJva2VuIGZpbGVzeXN0
ZW1zIGRvbid0IHN1ZmZlciBmcm9tCnRoaXMgYnVnLCBidXQgaXQncyBub3QgcHJvcGVyLgoKcG9z
aXhfYWNsX2NyZWF0ZSgpIGlzIG9ubHkgc3VwcG9zZWQgdG8gYXBweSB0aGUgdW1hc2sgaWYgdGhl
IGlub2RlCnN1cHBvcnRzIEFDTHM7IGlmIG5vdCwgdGhlIFZGUyBpcyBzdXBwb3NlZCB0byBkbyBp
dC4gQnV0IGlmIHRoZQpmaWxlc3lzdGVtIHByZXRlbmRzIHRvIGhhdmUgQUNMIHN1cHBvcnQgYnV0
IHRoZSBrZXJuZWwgZG9lcyBub3QsIGl0J3MKcmVhbGx5IGEgZmlsZXN5c3RlbSBidWcuIEhhY2tp
bmcgdGhlIHVtYXNrIGNvZGUgaW50bwpwb3NpeF9hY2xfY3JlYXRlKCkgZm9yIHRoYXQgaW5jb25z
aXN0ZW50IGNhc2UgZG9lc24ndCBzb3VuZCByaWdodC4KCkEgYmV0dGVyIHdvcmthcm91bmQgd291
bGQgYmUgdGhpcyBwYXRjaDoKaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9wcm9qZWN0L2xp
bnV4LW5mcy9wYXRjaC8xNTE2MDM3NDQ2NjIuMjkwMzUuNDkxMDE2MTI2NDEyNDg3NTY1OC5zdGdp
dEByYWJiaXQuaW50ZXJuLmNtLWFnLwpJIHN1Ym1pdHRlZCBpdCBtb3JlIHRoYW4gNSB5ZWFycyBh
Z28sIGl0IGdvdCBvbmUgcG9zaXRpdmUgcmV2aWV3LCBidXQKd2FzIG5ldmVyIG1lcmdlZC4KClRo
aXMgcGF0Y2ggZW5hYmxlcyB0aGUgVkZTJ3MgdW1hc2sgY29kZSBldmVuIGlmIHRoZSBmaWxlc3lz
dGVtCnByZXJlbnRzIHRvIHN1cHBvcnQgQUNMcy4gVGhpcyBzdGlsbCBkb2Vzbid0IGZpeCB0aGUg
ZmlsZXN5c3RlbSBidWcsCmJ1dCBtYWtlcyBWRlMncyBiZWhhdmlvciBjb25zaXN0ZW50LgoKTWF4
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSmZzLWRp
c2N1c3Npb24gbWFpbGluZyBsaXN0Ckpmcy1kaXNjdXNzaW9uQGxpc3RzLnNvdXJjZWZvcmdlLm5l
dApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9qZnMtZGlzY3Vz
c2lvbgo=
