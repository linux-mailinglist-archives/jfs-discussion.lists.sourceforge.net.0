Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 27F9FAF6027
	for <lists+jfs-discussion@lfdr.de>; Wed,  2 Jul 2025 19:38:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:In-Reply-To:References:
	MIME-Version:Sender:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Z7L4ZjRW3+5EC0akywbUD3GA1nRu0jqbj6TzFn2Mvp4=; b=XdhOq79tKZYHP0OJGfiT5SNG/5
	UMjseJ/kSocwgnFbgpk1MH2+y9exYCYH1LRuqXz4WyTEJIusjOpTXX32pMCtG7E3rbaB7wa9PAHys
	L8/y9wGJzApNVpibdbN9/Qp8GBTBRToWZWUpZbCqxDHkqMWtwpzEHjPtEbX9PCGATyD4=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1uX1P8-0006zl-Lm;
	Wed, 02 Jul 2025 17:37:54 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <wwzcherry@gmail.com>) id 1uX0LB-0004l6-Ej
 for jfs-discussion@lists.sourceforge.net;
 Wed, 02 Jul 2025 16:29:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:To:Subject:
 Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=aSS4H2XZBtkqYAveJxQj+eEuK2Q9epsgfvVtW8tGARE=; b=UyzKFqYWuGw4rttS1BoPatRxNZ
 UFCLBLwRxZCyokfXjsUcKxKstBRIBPXSSWfSr641ncDZDKNs+B7XK18HWV7x/y5eN5HAERx4iE64c
 NEI+nWqaLGYfbBp+V+LsgffqotXydPu7g6GCLI/Kq2NUJUA/pPx2PcNInFrTjTaQPzw0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=aSS4H2XZBtkqYAveJxQj+eEuK2Q9epsgfvVtW8tGARE=; b=ffLBL/GXE093akgt6hUiLsT1uv
 PTo7KmJoe4UIcC86IJxakYqBaXHs8Swy/npDqz01W7fGEplLej0ekJH/COk/UhAOGjrfRn2qUwRv2
 ikjG1Pg5Ccg3YrxrcWdafK2sTo9FJl5gzLp18brmS7CAidFgLSdvNcqTXZTyhvoJY3G8=;
Received: from mail-lf1-f43.google.com ([209.85.167.43])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1uX0LA-0005AZ-VE for jfs-discussion@lists.sourceforge.net;
 Wed, 02 Jul 2025 16:29:45 +0000
Received: by mail-lf1-f43.google.com with SMTP id
 2adb3069b0e04-553b6a349ccso5251231e87.0
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 02 Jul 2025 09:29:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1751473773; x=1752078573; darn=lists.sourceforge.net;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=aSS4H2XZBtkqYAveJxQj+eEuK2Q9epsgfvVtW8tGARE=;
 b=V7PiGeV+nQ6M9t8DWNga20hO1RNyQpRfd0noBKTXN19G4196ALq8g2tsnOa8pWIOg9
 Zl8IzNX/v2SI5jI2mcmq0GiZwB4eouDvRLM3IJQjGWdQemQlAfDS7J9atvrKsFndA5Ed
 7HbVxkBC0/koAW9e6OEaCA9KLWiFtXmfkpskFXPRs8IETZOz4l+hZZAcvOjussbZAI+m
 JBOMS+ws4Duw7dtwvygojzqLO1s15FFeya6LZEQowpCy40WCrcAAxCfL+0ucn+Vhnhvd
 Fp4qqC5+RABTFHYofU7NaBw5sQw//9NM1ho/OMUmTzDC2wrcL6tC1NRXF0qXW/wc6MAR
 JXWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1751473773; x=1752078573;
 h=content-transfer-encoding:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=aSS4H2XZBtkqYAveJxQj+eEuK2Q9epsgfvVtW8tGARE=;
 b=auF2X+486ZYnQBF8sOvPUiW65juJBQfqSYZHYXLnm3XC2UDGKo6xyalEbpDAOx7bw7
 dz7d4/K+56vjFNY65AFI9TmM75QicdTOoN05MzBsuJ/AfpgQMwMmqOZkEXpvXVp7bZrG
 5JwWEonYamCXpzH+lxPW8S1lQgObx44/JWvpq05GVQRwV0sSg/e2mxnYOZ1FNLAAmmT0
 Kf8KAXZFxO3GZs66sFdGUqKDqtO7Ly4y/VIuOJsfB4HVY7/OK9Yc3dElolVH+tTsYLoi
 1F92zBjiR9t2TRXbgbssEvXGifmXr6E0ygrwkG/mF35hBoyg9D/RGiNyo67zustdSgrO
 Taew==
X-Forwarded-Encrypted: i=1;
 AJvYcCW0kfDnmY+B6Z1PXdYGJZneRZjDsPxuLVaIXZYVCYjfF0NKpc/a6qtwpQxnaq8gj5RKA9sMu+CWgOujzT778A==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YwOcKiM4EaXv7nz/Iw+PX4xtatrY8+izTcNh3/ZaTVQgUmTPAr2
 1GUebIQcDKivqivv7pQJHDpc27gJmnHVCgP7vO9vQ0w/B59KGhG94eLIUREf13Zv8Hkpe5iVoCl
 Iwsp1uMyg0jDbzN1GuKxkY+w+rLgFn8I=
X-Gm-Gg: ASbGnctO0CKgi0gFORSrwPbjvpt5tLicgLnyvCPzySJumL7ldS4NaO6/Yt4cAOrvvIn
 ix2mCDOE8WRfXEHqBy1W95xwQnEjsI6pZKJM/PbpoXnS6tOW2n6yUVoXVL2iWXjO0ngb3wVmIFl
 uLxNRYn+/yfKaJlPseDcR6Ppl4EKOPos770Z/oKI5zrbo2elYKg0zAmadn
X-Google-Smtp-Source: AGHT+IHbefgF854rfVIrPuyu4V1su3s4+qKJOMJf/hfg9SmTNfOBwWmMz5hZn+0c048elNnmo5VK1Y4/ZD/hnJrQxcU=
X-Received: by 2002:a05:6512:24c3:b0:553:a272:4d18 with SMTP id
 2adb3069b0e04-5562eec299cmr9020e87.20.1751473772978; Wed, 02 Jul 2025
 09:29:32 -0700 (PDT)
MIME-Version: 1.0
References: <CANrG6LvQbYqHkZSUuM-OqzVE-Gj1UwE0M9YiEXWU-keTVGmQuQ@mail.gmail.com>
In-Reply-To: <CANrG6LvQbYqHkZSUuM-OqzVE-Gj1UwE0M9YiEXWU-keTVGmQuQ@mail.gmail.com>
Date: Wed, 2 Jul 2025 12:29:21 -0400
X-Gm-Features: Ac12FXxQ-xks2xEuzBBe3LzfbgSOugwqcbdVRKOOEA4IpYYaL5ufJcOzdG8Nl98
Message-ID: <CANrG6Lv+rQp7qyMaSVpBEDTOPL_OUeaKwQZTbr++qh_d-QCK0g@mail.gmail.com>
To: shaggy@kernel.org, jfs-discussion@lists.sourceforge.net
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi all,
 I updated a doc for reproducing these issues.
 https://github.com/AmoyCherry/syzllm-bug-reports/blob/main/bugs/6.16rc3/reproduce_guid.md
 Ask me any doubt. 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 [wwzcherry(at)gmail.com]
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.43 listed in wl.mailspike.net]
X-Headers-End: 1uX0LA-0005AZ-VE
X-Mailman-Approved-At: Wed, 02 Jul 2025 17:37:53 +0000
Subject: Re: [Jfs-discussion] kernel BUG in jfs_evict_inode
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
From: Vincent via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Vincent <wwzcherry@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

SGkgYWxsLAoKSSB1cGRhdGVkIGEgZG9jIGZvciByZXByb2R1Y2luZyB0aGVzZSBpc3N1ZXMuCmh0
dHBzOi8vZ2l0aHViLmNvbS9BbW95Q2hlcnJ5L3N5emxsbS1idWctcmVwb3J0cy9ibG9iL21haW4v
YnVncy82LjE2cmMzL3JlcHJvZHVjZV9ndWlkLm1kCgoKQXNrIG1lIGFueSBkb3VidC4KCgpUaGFu
a3MsClZpbmNlbnQKClZpbmNlbnQgPHd3emNoZXJyeUBnbWFpbC5jb20+IOS6jjIwMjXlubQ25pyI
Mjnml6Xlkajml6UgMjA6MDjlhpnpgZPvvJoKCj4KPiBIaSwKPgo+IEkgZm91bmQgdGhlIGZvbGxv
d2luZyByZXByb2R1Y2libGUgaXNzdWUgb24gdGhlIGxhdGVzdCBrZXJuZWwuCj4KPiBLZXJuZWwg
dmVyc2lvbjogTGludXggNi4xNi1yYzMsCj4gaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2Nt
L2xpbnV4L2tlcm5lbC9naXQvdG9ydmFsZHMvbGludXguZ2l0L3RyZWUvP2g9djYuMTYtcmMzCj4g
S2VybmVsIC5jb25maWc6Cj4gaHR0cHM6Ly9naXRodWIuY29tL0Ftb3lDaGVycnkvc3l6bGxtLWJ1
Zy1yZXBvcnRzL2Jsb2IvbWFpbi9idWdzLzYuMTZyYzMvLmNvbmZpZwo+Cj4gUmVwcm9kdWNlcjog
aHR0cHM6Ly9naXRodWIuY29tL0Ftb3lDaGVycnkvc3l6bGxtLWJ1Zy1yZXBvcnRzL2Jsb2IvbWFp
bi9idWdzLzYuMTZyYzMva2VybmVsJTIwQlVHJTIwaW4lMjBqZnNfZXZpY3RfaW5vZGUvcmVwcm8u
Y3Byb2cKPiBCdWcgcmVwb3J0OiBodHRwczovL2dpdGh1Yi5jb20vQW1veUNoZXJyeS9zeXpsbG0t
YnVnLXJlcG9ydHMvYmxvYi9tYWluL2J1Z3MvNi4xNnJjMy9rZXJuZWwlMjBCVUclMjBpbiUyMGpm
c19ldmljdF9pbm9kZS9yZXBvcnQwCj4gSXNzdWUgUG9zaXRpb246IGZzL2pmcy9pbm9kZS5jOjE2
OSAoc2VlIEJ1ZyByZXBvcnQpCj4KPiBPdGhlciBtYXRlcmlhbHMgYXJlIGFsc28gaW4gdGhlIGZv
bGRlcjoKPiBodHRwczovL2dpdGh1Yi5jb20vQW1veUNoZXJyeS9zeXpsbG0tYnVnLXJlcG9ydHMv
dHJlZS9tYWluL2J1Z3MvNi4xNnJjMy9rZXJuZWwlMjBCVUclMjBpbiUyMGpmc19ldmljdF9pbm9k
ZQo+IFBsZWFzZSBub3RpZnkgbWUgaWYgeW91IG5lZWQgbW9yZSBpbmZvcm1hdGlvbi4KPgo+Cj4g
QWxsIHRoZSBiZXN0LAo+IFZpbmNlbnQKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpKZnMtZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKSmZzLWRpc2N1c3Np
b25AbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xp
c3RzL2xpc3RpbmZvL2pmcy1kaXNjdXNzaW9uCg==
